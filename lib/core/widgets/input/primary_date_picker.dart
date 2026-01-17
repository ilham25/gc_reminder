import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/bottom_sheet/base_bottom_sheet.dart';
import 'package:gc_reminder/core/widgets/input/date_picker.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:intl/intl.dart';

class PrimaryDatePicker extends StatelessWidget {
  final DateTime? value;
  final ValueChanged<DateTime> onChanged;
  final String hintText;
  final String errorText;
  final AssetGenImage? leadingIcon;
  final DateTime? initialDateTime;
  final DateTime? maximumDate;
  final DateTime? minimumDate;
  final String dateFormat;
  final CupertinoDatePickerMode mode;
  final String title;

  const PrimaryDatePicker({
    super.key,
    this.value,
    this.hintText = "",
    this.errorText = "",
    this.leadingIcon,
    required this.onChanged,
    this.initialDateTime,
    this.maximumDate,
    this.minimumDate,
    this.dateFormat = "dd MMM yyyy",
    this.mode = CupertinoDatePickerMode.date,
    this.title = "",
  });

  double get height => 48;
  double get radius => 12;

  Future<void> _onPick(BuildContext context) async {
    DateTime? date = await showModalBottomSheet<DateTime?>(
      context: context,
      builder: (context) {
        return UIKitBaseBottomSheet(
          child: SafeArea(
            child: DatePicker(
              title: hintText,
              initialDateTime: initialDateTime ?? value,
              maximumDate: maximumDate,
              minimumDate: minimumDate,
              onChanged: (value) {
                context.router.maybePop(value);
              },
              mode: mode,
            ),
          ),
        );
      },
    );

    if (!context.mounted) return;

    if (date == null) return;
    onChanged(date);
  }

  String _getDisplay() {
    DateTime? display = value;
    display ??= initialDateTime;

    if (display == null) return "";

    return DateFormat(dateFormat, "id_ID").format(display);
  }

  @override
  Widget build(BuildContext context) {
    bool hasError = errorText.isNotEmpty;
    final String label = _getDisplay();

    return Material(
      type: .transparency,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title.isNotEmpty) ...[
            Text(title, style: MyTheme.style.heading.h5),
            Space.h(8),
          ],
          Ink(
            decoration: BoxDecoration(
              color: MyTheme.color.white,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: InkWell(
              onTap: () async {
                _onPick(context);
              },
              borderRadius: BorderRadius.circular(radius),
              child: Container(
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(
                    width: 1,
                    color: !hasError
                        ? MyTheme.color.palette.light.darkest
                        : MyTheme.color.danger,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(16),
                ),
                child: Row(
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.only(right: AppSetting.setWidth(10)),
                    //   child: leadingIcon != null
                    //       ? leadingIcon!.image(
                    //           height: AppSetting.setHeight(20),
                    //           width: AppSetting.setWidth(20),
                    //           color: MyTheme.color.black,
                    //         )
                    //       : Assets.icons.iconDatePicker.image(
                    //           height: AppSetting.setHeight(20),
                    //           width: AppSetting.setWidth(20),
                    //           color: MyTheme.color.black,
                    //         ),
                    // ),
                    Expanded(
                      child: label.isNotEmpty
                          ? Text(label, style: MyTheme.style.body.m.copyWith())
                          : Text(
                              hintText,
                              style: MyTheme.style.body.m.copyWith(
                                color: MyTheme.color.palette.dark.lightest,
                              ),
                            ),
                    ),
                    Assets.icons.arrowDown.image(
                      height: AppSetting.setHeight(10),
                      width: AppSetting.setWidth(10),
                      color: MyTheme.color.palette.dark.lightest,
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (hasError)
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                errorText,
                style: MyTheme.style.body.xs.copyWith(
                  color: MyTheme.color.danger,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class PrimaryDropdownSheet<T> extends StatelessWidget {
  final String title;
  final List<T> items;
  final List<Widget>? dropdownItems;
  final String Function(T) itemLabel;

  const PrimaryDropdownSheet({
    super.key,
    required this.title,
    required this.items,
    required this.itemLabel,
    this.dropdownItems,
  });

  List<Widget> _buildList(BuildContext context) {
    if (dropdownItems != null) {
      return dropdownItems!;
    }

    return items.map((item) {
      return ListTile(
        title: Text(itemLabel(item), style: MyTheme.style.body.m),
        onTap: () {
          context.router.maybePop(item);
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          padding: EdgeInsets.only(
            top: AppSetting.setHeight(MyTheme.defaultPadding),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: AppSetting.setWidth(MyTheme.defaultPadding),
                  right: AppSetting.setWidth(MyTheme.defaultPadding),
                ),
                child: Text(title, style: MyTheme.style.body.m),
              ),
              Space.h(16),
              Expanded(child: ListView(children: _buildList(context))),
            ],
          ),
        ),
      ),
    );
  }
}
