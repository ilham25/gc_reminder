import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/theme/theme.dart';

class Label extends StatelessWidget {
  final Widget child;
  final String text;
  final bool isOptional;
  final bool isRequired;
  final EdgeInsets? textPadding;

  const Label({
    super.key,
    required this.text,
    required this.child,
    this.isOptional = false,
    this.isRequired = false,
    this.textPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: textPadding ?? EdgeInsets.zero,
          child: RichText(
            text: TextSpan(
              style: MyTheme.style.heading.h5,
              children: [
                TextSpan(text: text),
                if (isRequired)
                  TextSpan(
                    text: ' *',
                    style: MyTheme.style.heading.h5.copyWith(
                      color: MyTheme.color.danger,
                    ),
                  ),
                if (isOptional)
                  TextSpan(
                    text: ' (Optional)',
                    style: MyTheme.style.heading.h5.copyWith(
                      color: MyTheme.color.palette.dark.light,
                    ),
                  ),
              ],
            ),
          ),
        ),
        Space.h(4),
        child,
      ],
    );
  }
}
