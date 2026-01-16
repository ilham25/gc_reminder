import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/theme/theme.dart';

class EmptyList extends StatelessWidget {
  final VoidCallback onRefresh;
  final String message;

  const EmptyList({
    super.key,
    required this.onRefresh,
    this.message = "Tidak ada data",
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Space.h(MyTheme.defaultPadding),
          // Assets.images.logoIcon.image(
          //   height: AppSetting.setHeight(100),
          //   width: AppSetting.setWidth(100),
          //   color: MyTheme.color.palette.neutral.c300,
          // ),
          Space.h(32),
          Text(
            "Tidak ada data",
            style: MyTheme.style.action.l.copyWith(
              color: MyTheme.color.palette.dark.light,
            ),
          ),
          Space.h(8),
          UIKitButton(
            title: "Refresh",
            onTap: onRefresh,
            // size: ButtonSize.base,
            width: AppSetting.setWidth(120),
          ),
          Space.h(MyTheme.defaultPadding),
        ],
      ),
    );
  }
}
