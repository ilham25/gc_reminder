import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/theme/theme.dart';

class MapMarker extends StatelessWidget {
  final AssetGenImage icon;
  final VoidCallback? onTap;

  const MapMarker({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: AppSetting.setHeight(32),
        width: AppSetting.setWidth(32),
        child: Center(
          child: icon.image(
            height: AppSetting.setHeight(32),
            width: AppSetting.setWidth(32),
            color: MyTheme.color.palette.error.dark,
          ),
        ),
      ),
    );
  }
}
