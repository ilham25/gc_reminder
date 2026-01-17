import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_reminder/bloc/reminder/reminder_list/reminder_list_bloc.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/app_bar/app_bar.dart';
import 'package:gc_reminder/core/widgets/avatar/avatar.dart';
import 'package:gc_reminder/core/widgets/badge/badge.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/button/icon_button.dart';
import 'package:gc_reminder/core/widgets/content/list_item.dart';
import 'package:gc_reminder/core/widgets/image/image_caching.dart';
import 'package:gc_reminder/domain/notification/usecases/schedule_notification_usecase.dart';
import 'package:gc_reminder/domain/notification/usecases/show_notification_usecase.dart';
import 'package:gc_reminder/domain/permission/permission_service.dart';
import 'package:gc_reminder/domain/permission/usecases/request_permission_usecase.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/presentation/common/widgets/empty/empty_list.dart';
import 'package:gc_reminder/presentation/reminder/widgets/bottom_sheet/reminder_create_bottom_sheet.dart';
import 'package:gc_reminder/presentation/reminder/widgets/bottom_sheet/reminder_update_bottom_sheet.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:gc_reminder/utils/date/date_format_utils.dart';

@RoutePage()
class ReminderListScreen extends StatelessWidget {
  const ReminderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ReminderListBloc()..getData()),
      ],
      child: const ReminderListBody(),
    );
  }
}

class ReminderListBody extends StatefulWidget {
  const ReminderListBody({super.key});

  @override
  State<ReminderListBody> createState() => _ReminderListBodyState();
}

class _ReminderListBodyState extends State<ReminderListBody> {
  final ShowNotificationUseCase _showNotificationUseCase =
      inject<ShowNotificationUseCase>();
  final ScheduleNotificationUseCase _scheduleNotificationUseCase =
      inject<ScheduleNotificationUseCase>();

  Future _onShowNotification() async {
    await _showNotificationUseCase.call(title: "Ini notifikasi");
  }

  Future _onScheduleNotification() async {
    await _scheduleNotificationUseCase.call(
      DateTime.now().millisecond,
      title: "Ini notifikasi schedule",
      date: DateTime.now().add(const Duration(seconds: 5)),
    );
  }

  Future _onRefresh() async {
    await context.read<ReminderListBloc>().refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        leading: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: AppSetting.setWidth(200)),
          child: Row(
            children: [
              UIKitAvatar(radius: 100),
              Space.w(12),
              Flexible(
                fit: .tight,
                child: Column(
                  crossAxisAlignment: .stretch,
                  children: [
                    Text(
                      formatFullSort.format(DateTime.now()),
                      style: MyTheme.style.body.s.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                    ),
                    Space.h(4),
                    Text(
                      "Iruha-sama",
                      style: MyTheme.style.heading.h4,
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          UIKitIconButton.secondary(
            Assets.icons.search,
            iconSize: 20,
            decoration: UIKitIconButtonDecoration(
              // iconColor: MyTheme.color.palette.dark.darkest,
            ),
            onTap: () {},
          ),
          Space.w(8),
          UIKitBadge.count(
            count: 20,
            size: 16,
            decoration: UIKitBadgeDecoration(
              color: MyTheme.color.palette.error.dark,
            ),
            child: UIKitIconButton.secondary(
              Assets.icons.notificationOutlined,
              iconSize: 24,
              decoration: UIKitIconButtonDecoration(
                // iconColor: MyTheme.color.palette.dark.darkest,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: .symmetric(
            horizontal: AppSetting.setWidth(16),
            vertical: AppSetting.setHeight(16),
          ),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              _TotalBalanceCard(
                onSend: _onShowNotification,
                onRequest: _onScheduleNotification,
              ),
              Space.h(8),
              RecentReminders(onRefresh: _onRefresh),
            ],
          ),
        ),
      ),
      floatingActionButton: UIKitIconButton(
        Assets.icons.add,
        iconSize: 16,
        onTap: () async {
          await ReminderCreateBottomSheet.show();
          _onRefresh();
        },
      ),
      floatingActionButtonLocation: .centerFloat,
    );
  }
}

class RecentReminders extends StatefulWidget {
  final VoidCallback onRefresh;

  const RecentReminders({super.key, required this.onRefresh});

  @override
  State<RecentReminders> createState() => _RecentRemindersState();
}

class _RecentRemindersState extends State<RecentReminders> {
  List<int> selectedIds = [];
  bool get isDeleteMode => selectedIds.isNotEmpty;

  final RequestPermissionUseCase _permissionServiceUseCase =
      inject<RequestPermissionUseCase>();

  Future _onDelete() {
    return context.read<ReminderListBloc>().delete(selectedIds);
  }

  Widget _buildActionIcon() {
    return UIKitIconButton.secondary(
      !isDeleteMode ? Assets.icons.filter : Assets.icons.trashOutlined,
      iconSize: !isDeleteMode ? 14 : 16,
      size: 20,
      decoration: UIKitIconButtonDecoration(
        iconColor: !isDeleteMode
            ? MyTheme.color.palette.dark.darkest
            : MyTheme.color.danger,
      ),
      onTap: () async {
        if (!isDeleteMode) {
          _permissionServiceUseCase.call(.notification);
          return;
        }

        await _onDelete();
        widget.onRefresh();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .antiAlias,
      decoration: BoxDecoration(
        color: MyTheme.color.palette.light.light,
        borderRadius: .circular(16),
      ),

      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Padding(
            padding: .symmetric(
              horizontal: AppSetting.setWidth(8),
              vertical: AppSetting.setHeight(8),
            ),
            child: Row(
              children: [
                Flexible(
                  fit: .tight,
                  child: Text(
                    "Recent Reminders",
                    style: MyTheme.style.action.m,
                  ),
                ),
                Space.w(4),
                _buildActionIcon(),
                // Assets.icons.filter.image(
                //   height: AppSetting.setHeight(14),
                //   width: AppSetting.setWidth(14),
                //   color: MyTheme.color.palette.dark.darkest,
                // ),
              ],
            ),
          ),
          BlocBuilder<ReminderListBloc, ReminderListBlocState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => Center(child: CircularProgressIndicator()),
              loaded: (state, action) {
                if (state.items.isEmpty) {
                  return EmptyList(onRefresh: widget.onRefresh);
                }

                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // padding: .symmetric(vertical: AppSetting.setHeight(8)),
                  // separatorBuilder: (context, index) => Space.h(2),
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    final item = state.items[index];
                    final selected = selectedIds.contains(item.id);

                    return UIKitListItem(
                      title: item.title,
                      description:
                          "${formatterDate.format(item.startAt)}${item.endAt == null ? "" : " - ${formatterTimeMinute.format(item.endAt!)}"}",
                      decoration: UIKitListItemDecoration(
                        titleTextStyle: MyTheme.style.action.m,
                        descriptionTextStyle: MyTheme.style.body.xs.copyWith(
                          color: MyTheme.color.palette.dark.light,
                        ),
                        leftSpacing: 8,
                        backgroundColor: selected
                            ? MyTheme.color.palette.error.light
                            : null,
                      ),
                      leftAlignment: .center,
                      onTap: () async {
                        if (isDeleteMode) {
                          setState(() {
                            if (selected) {
                              selectedIds.remove(item.id);
                            } else {
                              selectedIds.add(item.id);
                            }
                          });

                          return;
                        }

                        await ReminderUpdateBottomSheet.show(reminder: item);
                        widget.onRefresh();
                      },
                      onLongPress: () {
                        setState(() {
                          if (selected) {
                            selectedIds.remove(item.id);
                          } else {
                            selectedIds.add(item.id);
                          }
                        });
                      },
                      left: SizedBox(
                        height: AppSetting.setHeight(32),
                        width: AppSetting.setHeight(32),
                        child: ImageCaching(
                          imageUrl: "https://picsum.photos/200?random=$index",
                          borderRadius: 100,
                        ),
                      ),
                      padding: .symmetric(
                        horizontal: AppSetting.setWidth(8),
                        vertical: AppSetting.setHeight(8),
                      ),
                      right: Column(
                        crossAxisAlignment: .end,
                        children: [
                          Text("\$32.16", style: MyTheme.style.action.m),
                          Space.h(4),
                          Text(
                            "Debit Card",
                            style: MyTheme.style.body.xs.copyWith(
                              color: MyTheme.color.palette.dark.light,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _TotalBalanceCard extends StatelessWidget {
  final VoidCallback? onSend;
  final VoidCallback? onRequest;

  const _TotalBalanceCard({this.onSend, this.onRequest});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSetting.setHeight(180),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [MyTheme.color.primary, MyTheme.color.palette.highlight.dark],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: AppSetting.setHeight(16),
            right: AppSetting.setWidth(16),
            child: Assets.icons.placeholder.image(
              height: AppSetting.setHeight(28),
              width: AppSetting.setWidth(28),
              color: MyTheme.color.white.withAlpha(200),
            ),
          ),
          Positioned(
            top: AppSetting.setHeight(20),
            right: AppSetting.setWidth(32),
            child: Assets.icons.placeholder.image(
              height: AppSetting.setHeight(20),
              width: AppSetting.setWidth(20),
              color: MyTheme.color.white.withAlpha(200),
            ),
          ),
          Positioned(
            top: AppSetting.setHeight(16),
            left: AppSetting.setWidth(16),
            child: Text(
              "******",
              style: MyTheme.style.heading.h3.copyWith(
                color: MyTheme.color.white,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: .symmetric(horizontal: AppSetting.setWidth(16)),
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Space.h(50),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .stretch,
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: .stretch,
                          children: [
                            Text(
                              "Total Balance",
                              style: MyTheme.style.body.m.copyWith(
                                color: MyTheme.color.palette.highlight.lightest,
                              ),
                            ),
                            Text(
                              "\$12,459.00",
                              style: MyTheme.style.heading.h1.copyWith(
                                color: MyTheme.color.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              fit: .tight,
                              child: UIKitButton.secondary(
                                title: "Send",
                                leftIcon: Assets.icons.send,
                                decoration: UIKitButtonDecoration(
                                  textColor: MyTheme.color.white,
                                  borderColor: MyTheme.color.white,
                                ),
                                onTap: onSend,
                              ),
                            ),
                            Space.w(8),
                            Flexible(
                              fit: .tight,
                              child: UIKitButton.secondary(
                                title: "Request",
                                leftIcon: Assets.icons.sort,
                                decoration: UIKitButtonDecoration(
                                  textColor: MyTheme.color.white,
                                  borderColor: MyTheme.color.white,
                                ),
                                onTap: onRequest,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Space.h(16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
