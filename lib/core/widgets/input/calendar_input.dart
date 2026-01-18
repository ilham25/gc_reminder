import 'package:flutter/widgets.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/content/calendar.dart';
import 'package:gc_reminder/theme/theme.dart';

class UIKitCalendarInput extends StatelessWidget {
  final String title;
  final String? errorText;

  final DateTime? value;
  final ValueChanged<DateTime>? onChanged;

  const UIKitCalendarInput({
    super.key,
    required this.title,
    this.errorText,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    bool hasError = errorText != null;

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        if (title.isNotEmpty) ...[
          Text(title, style: MyTheme.style.heading.h5),
          Space.h(8),
        ],
        UIKitCalendar(
          value: value,
          onChanged: onChanged,
          decoration: BoxDecoration(
            border: Border.all(
              color: hasError ? MyTheme.color.danger : MyTheme.color.white,
              width: 1,
            ),
          ),
        ),
        if (hasError)
          Container(
            margin: EdgeInsets.only(top: AppSetting.setHeight(8)),
            // padding: EdgeInsets.only(left: AppSetting.setWidth(10)),
            child: Text(
              errorText!,
              style: MyTheme.style.body.xs.copyWith(
                color: MyTheme.color.danger,
              ),
            ),
          ),
      ],
    );
  }
}
