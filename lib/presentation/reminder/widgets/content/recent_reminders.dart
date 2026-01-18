import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_reminder/bloc/reminder/reminder_dashboard/reminder_dashboard_bloc.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/button/icon_button.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/presentation/common/widgets/bottom_sheet/calendar_bottom_sheet.dart';
import 'package:gc_reminder/presentation/common/widgets/empty/empty_list.dart';
import 'package:gc_reminder/presentation/reminder/widgets/bottom_sheet/reminder_update_bottom_sheet.dart';
import 'package:gc_reminder/presentation/reminder/widgets/list_item/reminder_list_item.dart';
import 'package:gc_reminder/theme/theme.dart';

class RecentReminders extends StatefulWidget {
  final VoidCallback onRefresh;

  const RecentReminders({super.key, required this.onRefresh});

  @override
  State<RecentReminders> createState() => _RecentRemindersState();
}

class _RecentRemindersState extends State<RecentReminders> {
  List<int> selectedIds = [];
  bool get isDeleteMode => selectedIds.isNotEmpty;

  Future _onDelete() async {
    await context.read<ReminderDashboardBloc>().delete(selectedIds);
    setState(() {
      selectedIds = [];
    });
  }

  Widget _buildActionIcon() {
    return BlocBuilder<ReminderDashboardBloc, ReminderDashboardBlocState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loaded: (state, action) => Row(
          mainAxisSize: .min,
          children: [
            if (state.filter != null) ...[
              UIKitButton.tertiary(
                title: "Clear Filter",
                padding: .symmetric(horizontal: AppSetting.setWidth(4)),
                decoration: UIKitButtonDecoration(borderRadius: .circular(4)),
                onTap: () {
                  context.read<ReminderDashboardBloc>().clearFilter();
                },
              ),
              Space.w(4),
            ],
            UIKitIconButton.secondary(
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
                  final newDate = await CalendarBottomSheet.show(
                    title: "Select Date",
                    initialValue: state.filter?.date,
                  );
                  if (newDate == null || !context.mounted) return;
                  context.read<ReminderDashboardBloc>().setDate(newDate);

                  return;
                }

                await _onDelete();
                widget.onRefresh();
              },
            ),
          ],
        ),
      ),
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
          BlocBuilder<ReminderDashboardBloc, ReminderDashboardBlocState>(
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

                    return ReminderListItem(
                      reminder: item,
                      deleteMode: isDeleteMode,
                      onRefresh: widget.onRefresh,
                      selected: selected,
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
