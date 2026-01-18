import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/theme/theme.dart';

class EmptyList extends StatelessWidget {
  final VoidCallback? onRefresh;
  final String title;
  final String message;

  const EmptyList({
    super.key,
    this.onRefresh,
    this.title = "",
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
          Assets.images.illustrations.taskCompleted.image(
            height: AppSetting.setHeight(180),
          ),
          if (title.isNotEmpty) ...[
            Space.h(16),
            Text(title, style: MyTheme.style.heading.h2.copyWith()),
          ],
          Space.h(8),
          Text(
            message,
            style: MyTheme.style.body.m.copyWith(
              color: MyTheme.color.palette.dark.light,
            ),
            textAlign: .center,
          ),
          if (onRefresh != null) ...[
            Space.h(8),
            UIKitButton(
              title: "Refresh",
              onTap: onRefresh,
              width: AppSetting.setWidth(120),
            ),
          ],
          Space.h(MyTheme.defaultPadding),
        ],
      ),
    );
  }
}
