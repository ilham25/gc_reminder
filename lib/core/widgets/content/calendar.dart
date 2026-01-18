import 'package:flutter/widgets.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:table_calendar/table_calendar.dart';

class UIKitCalendar extends StatelessWidget {
  final DateTime? value;
  final ValueChanged<DateTime>? onChanged;

  final BoxDecoration? decoration;

  const UIKitCalendar({super.key, this.value, this.onChanged, this.decoration});

  DateTime get selectedDate => value ?? DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: decoration?.color ?? MyTheme.color.white,
        borderRadius: decoration?.borderRadius ?? .circular(16),
      ).copyWith(border: decoration?.border),
      child: TableCalendar(
        focusedDay: selectedDate,
        firstDay: DateTime.now(),
        lastDay: DateTime.now().add(Duration(days: 365 * 100)),
        calendarFormat: .month,
        onDaySelected: (selectedDay, focusedDay) {
          if (onChanged != null) {
            onChanged!(selectedDay);
          }
        },
        selectedDayPredicate: (day) {
          // Return true if 'day' is the same as '_selectedDay'
          return isSameDay(selectedDate, day);
        },
        headerStyle: HeaderStyle(
          titleTextStyle: MyTheme.style.heading.h4,
          formatButtonVisible: false,
          titleCentered: true,
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: MyTheme.style.caption.m.copyWith(
            color: MyTheme.color.palette.dark.light,
          ),
          weekendStyle: MyTheme.style.caption.m.copyWith(
            color: MyTheme.color.palette.dark.light,
          ),
        ),
        calendarStyle: CalendarStyle(
          defaultTextStyle: MyTheme.style.heading.h5.copyWith(
            color: MyTheme.color.palette.dark.medium,
          ),
          todayTextStyle: MyTheme.style.heading.h5.copyWith(
            color: MyTheme.color.palette.dark.medium,
          ),
          holidayTextStyle: MyTheme.style.heading.h5.copyWith(
            color: MyTheme.color.palette.dark.medium,
          ),
          disabledTextStyle: MyTheme.style.heading.h5.copyWith(
            color: MyTheme.color.palette.light.dark,
          ),
          weekendTextStyle: MyTheme.style.heading.h5.copyWith(
            color: MyTheme.color.palette.dark.medium,
          ),
          outsideTextStyle: MyTheme.style.heading.h5.copyWith(
            color: MyTheme.color.palette.light.dark,
          ),
          selectedTextStyle: MyTheme.style.heading.h5.copyWith(
            color: MyTheme.color.white,
          ),
          selectedDecoration: BoxDecoration(
            color: MyTheme.color.primary,
            shape: .circle,
          ),
          todayDecoration: BoxDecoration(
            shape: .circle,
            color: MyTheme.color.palette.light.light,
          ),
        ),
      ),
    );
  }
}
