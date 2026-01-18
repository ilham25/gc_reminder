import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:gc_reminder/utils/date/date_format_utils.dart';

class CalendarTimeline extends StatelessWidget {
  final DateTime? value;
  final ValueChanged<DateTime?>? onChanged;
  final DateTime? firstDay;
  final DateTime? lastDay;

  const CalendarTimeline({
    super.key,
    this.value,
    this.onChanged,
    this.firstDay,
    this.lastDay,
  });

  DateTime get selectedDate => value ?? DateTime.now();

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLinePicker.itemBuilder(
      focusedDate: selectedDate,
      firstDate: firstDay ?? DateTime.now(),
      lastDate: lastDay ?? DateTime.now().add(Duration(days: 365 * 100)),
      onDateChange: (date) {
        if (onChanged != null) {
          onChanged!(date);
        }
      },
      headerOptions: HeaderOptions(headerType: .none),
      timelineOptions: TimelineOptions(height: AppSetting.setHeight(62)),
      itemExtent: AppSetting.setWidth(44),
      itemBuilder: (context, date, isSelected, isDisabled, isToday, onTap) {
        Color color = MyTheme.color.white;
        if (isToday) {
          color = MyTheme.color.palette.light.light;
        }
        if (isSelected) {
          color = MyTheme.color.primary;
        }

        return Material(
          type: .transparency,
          borderRadius: .circular(14),
          clipBehavior: .antiAlias,
          child: InkResponse(
            onTap: onTap,
            child: Container(
              height: AppSetting.setHeight(62),
              width: AppSetting.setWidth(44),
              decoration: BoxDecoration(
                color: color,
                borderRadius: .circular(16),
              ),
              child: Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: .center,
                children: [
                  Text(
                    formatDayNameSort.format(date).toUpperCase(),
                    style: MyTheme.style.caption.m.copyWith(
                      color: isSelected
                          ? MyTheme.color.palette.highlight.light
                          : MyTheme.color.palette.dark.light,
                    ),
                  ),
                  Space.h(4),
                  Text(
                    formatDate.format(date),
                    style: MyTheme.style.body.l.copyWith(
                      color: isSelected
                          ? MyTheme.color.white
                          : MyTheme.color.palette.dark.medium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
