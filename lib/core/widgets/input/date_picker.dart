import 'package:flutter/cupertino.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({
    super.key,
    required this.title,
    required this.onChanged,
    this.initialDateTime,
    this.maximumDate,
    this.minimumDate,
    this.mode = CupertinoDatePickerMode.date,
  });

  final DateTime? initialDateTime;
  final DateTime? maximumDate;
  final DateTime? minimumDate;
  final ValueChanged<DateTime> onChanged;
  final CupertinoDatePickerMode mode;

  final String title;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: const Locale("id"),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: AppSetting.setHeight(MyTheme.defaultPadding),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
            ),
            child: Text(widget.title, style: MyTheme.style.heading.h4),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 142,
              child: CupertinoTheme(
                data: CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: GoogleFonts.inter(
                      fontSize: 14,
                      color: MyTheme.color.black,
                    ),
                  ),
                ),
                child: CupertinoDatePicker(
                  dateOrder: DatePickerDateOrder.dmy,
                  use24hFormat: true,
                  onDateTimeChanged: (value) {
                    setState(() {
                      selectedDate = value;
                    });
                  },
                  mode: widget.mode,
                  initialDateTime: widget.initialDateTime,
                  maximumDate: widget.maximumDate,
                  minimumDate: widget.minimumDate,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: UIKitButton(
                    title: "Pilih",
                    onTap: () {
                      widget.onChanged(
                        selectedDate ??
                            widget.initialDateTime ??
                            DateTime.now(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
