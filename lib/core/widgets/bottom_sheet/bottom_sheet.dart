import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/theme/theme.dart';

class UIKitBottomSheet extends StatelessWidget {
  final Widget child;
  final String title;

  final Widget? action;

  final Color? headerBackgroundColor;
  final bool isRemoveContentPadding;

  const UIKitBottomSheet({
    super.key,
    required this.child,
    required this.title,
    this.action,
    this.headerBackgroundColor,
    this.isRemoveContentPadding = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                vertical: AppSetting.setHeight(MyTheme.defaultPadding),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: MyTheme.color.palette.light.dark,
                  ),
                ),
                color: headerBackgroundColor ?? MyTheme.color.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text(title, style: MyTheme.style.heading.h4)],
              ),
            ),
            if (!isRemoveContentPadding) Space.h(MyTheme.defaultPadding),
            Flexible(
              fit: FlexFit.loose,
              child: SingleChildScrollView(
                padding: !isRemoveContentPadding
                    ? EdgeInsets.symmetric(
                        horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                      )
                    : null,
                child: Material(type: MaterialType.transparency, child: child),
              ),
            ),
            if (!isRemoveContentPadding) Space.h(MyTheme.defaultPadding),
            if (action != null)
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: MyTheme.color.palette.light.darkest,
                      width: AppSetting.setHeight(1),
                    ),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                  vertical: AppSetting.setHeight(MyTheme.defaultPadding),
                ),
                child: action,
              ),
          ],
        ),
      ),
    );
  }
}
