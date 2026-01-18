import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/content/list_item.dart';
import 'package:gc_reminder/core/widgets/content/tag.dart';
import 'package:gc_reminder/domain/models/map/map_model.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/routing/route.gr.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:gc_reminder/utils/date/date_format_utils.dart';

class ReminderListItem extends StatelessWidget {
  final ReminderModel reminder;
  final bool selected;
  final bool deleteMode;
  final VoidCallback onRefresh;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  const ReminderListItem({
    super.key,
    required this.reminder,
    required this.selected,
    required this.deleteMode,
    required this.onRefresh,
    required this.onTap,
    required this.onLongPress,
  });

  Widget _buildLeadingIcon() {
    late AssetGenImage icon;
    if (reminder.type == .location) {
      icon = Assets.icons.locationOutlined;
    } else {
      icon = Assets.icons.timeOutlined;
    }

    return icon.image(
      width: AppSetting.setHeight(16),
      height: AppSetting.setHeight(16),
      color: MyTheme.color.primary,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: reminder.isDone ? .5 : 1,
      child: UIKitListItem(
        title: reminder.title,
        description:
            "${formatterDate.format(reminder.startAt)}${reminder.endAt == null ? "" : " - ${formatterTimeMinute.format(reminder.endAt!)}"}",
        decoration: UIKitListItemDecoration(
          titleTextStyle: MyTheme.style.action.m,
          descriptionTextStyle: MyTheme.style.body.xs.copyWith(
            color: MyTheme.color.palette.dark.light,
          ),
          leftSpacing: 8,
          backgroundColor: selected ? MyTheme.color.palette.error.light : null,
        ),
        leftAlignment: .center,
        onTap: onTap,
        onLongPress: onLongPress,
        left: Container(
          height: AppSetting.setHeight(32),
          width: AppSetting.setHeight(32),
          decoration: BoxDecoration(
            borderRadius: .circular(8),
            color: MyTheme.color.palette.highlight.lightest,
          ),
          child: Center(child: _buildLeadingIcon()),
        ),
        padding: .symmetric(
          horizontal: AppSetting.setWidth(8),
          vertical: AppSetting.setHeight(8),
        ),
        right: reminder.type == .location
            ? ConstrainedBox(
                constraints: BoxConstraints(maxWidth: AppSetting.setWidth(100)),
                child: UIKitTag(
                  text: reminder.place ?? "",
                  focused: true,
                  leftIcon: Assets.icons.locationMarker,
                  onTap: () {
                    context.router.push(
                      ViewLocationRoute(
                        markers: [
                          MapMarkerModel(
                            latitude: reminder.lat!,
                            longitude: reminder.lng!,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }
}
