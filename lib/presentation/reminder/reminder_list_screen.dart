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
import 'package:gc_reminder/core/widgets/progress/progress_bar.dart';
import 'package:gc_reminder/core/widgets/toast/toast.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/presentation/common/widgets/empty/empty_list.dart';
import 'package:gc_reminder/presentation/reminder/widgets/bottom_sheet/reminder_create_bottom_sheet.dart';
import 'package:gc_reminder/presentation/reminder/widgets/bottom_sheet/reminder_update_bottom_sheet.dart';
import 'package:gc_reminder/routing/route.gr.dart';
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
              _TotalBalanceCard(),
              Space.h(8),
              Container(
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
                          UIKitIconButton.secondary(
                            Assets.icons.filter,
                            iconSize: 14,
                            size: 20,
                            decoration: UIKitIconButtonDecoration(
                              iconColor: MyTheme.color.palette.dark.darkest,
                            ),
                          ),
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
                        orElse: () =>
                            Center(child: CircularProgressIndicator()),
                        loaded: (state) {
                          if (state.items.isEmpty) {
                            return EmptyList(onRefresh: _onRefresh);
                          }

                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            // padding: .symmetric(vertical: AppSetting.setHeight(8)),
                            // separatorBuilder: (context, index) => Space.h(2),
                            itemCount: state.items.length,
                            itemBuilder: (context, index) {
                              final item = state.items[index];

                              return UIKitListItem(
                                title: item.title,
                                description:
                                    "${formatterDate.format(item.startAt)}${item.endAt == null ? "" : " - ${formatterTimeMinute.format(item.endAt!)}"}",
                                decoration: UIKitListItemDecoration(
                                  titleTextStyle: MyTheme.style.action.m,
                                  descriptionTextStyle: MyTheme.style.body.xs
                                      .copyWith(
                                        color: MyTheme.color.palette.dark.light,
                                      ),
                                  leftSpacing: 8,
                                ),
                                leftAlignment: .center,
                                onTap: () async {
                                  debugPrint("onTap: $item");
                                  await ReminderUpdateBottomSheet.show(
                                    reminder: item,
                                  );
                                  _onRefresh();
                                },
                                left: SizedBox(
                                  height: AppSetting.setHeight(32),
                                  width: AppSetting.setHeight(32),
                                  child: ImageCaching(
                                    imageUrl:
                                        "https://picsum.photos/200?random=$index",
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
                                    Text(
                                      "\$32.16",
                                      style: MyTheme.style.action.m,
                                    ),
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
              ),
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

class _TotalBalanceCard extends StatelessWidget {
  const _TotalBalanceCard({super.key});

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
                                onTap: () {},
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
                                onTap: () {},
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
