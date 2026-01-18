import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/content/calendar.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/routing/route.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:gc_reminder/utils/date/datetime_ext.dart';

class CalendarBottomSheet {
  static final AppRouter _router = inject<AppRouter>();

  static Future<DateTime?> show({
    required String title,
    DateTime? initialValue,
  }) async {
    return await showModalBottomSheet(
      context: _router.navigatorKey.currentContext!,
      isDismissible: true,
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: false,
      builder: (context) =>
          _BottomSheet(title: title, initialValue: initialValue),
    );
  }
}

class _BottomSheet extends StatefulWidget {
  final String title;
  final DateTime? initialValue;

  const _BottomSheet({required this.title, this.initialValue});

  @override
  State<_BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<_BottomSheet> {
  DateTime? value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue ?? DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return UIKitBottomSheet(
      title: widget.title,
      isRemoveContentPadding: true,
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Container(
            padding: .only(
              left: AppSetting.setWidth(MyTheme.defaultPadding),
              right: AppSetting.setWidth(MyTheme.defaultPadding),
              bottom: AppSetting.setHeight(MyTheme.defaultPadding),
            ),
            child: UIKitCalendar(
              value: value,
              firstDay: DateTime.now().subtract(const Duration(days: 365)),
              onChanged: (newValue) {
                if (value != null && newValue.isSameDayAs(value!)) {
                  setState(() {
                    value = null;
                  });
                  return;
                }

                setState(() {
                  value = newValue;
                });
              },
            ),
          ),
          Container(
            padding: .symmetric(
              horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
              vertical: AppSetting.setHeight(MyTheme.defaultPadding),
            ),
            child: UIKitButton(
              title: "Submit",
              onTap: () {
                context.router.maybePop(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
