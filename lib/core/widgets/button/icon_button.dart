import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/gen/assets.gen.dart';

class UIKitIconButton extends StatelessWidget {
  final AssetGenImage icon;
  final VoidCallback? onTap;

  final double size;
  final double? iconSize;

  final bool isLoading;
  final bool enable;

  final UIKitIconButtonDecoration? decoration;

  final ButtonVariant variant = .primary;

  const UIKitIconButton(
    this.icon, {
    super.key,
    this.onTap,
    this.decoration,
    this.size = 40,
    this.iconSize,
    this.isLoading = false,
    this.enable = true,
  });

  factory UIKitIconButton.secondary(
    AssetGenImage icon, {
    VoidCallback? onTap,
    double size = 40,
    double? iconSize,
    UIKitIconButtonDecoration? decoration,
  }) => UIKitIconButton(
    icon,
    onTap: onTap,
    size: size,
    iconSize: iconSize,
    decoration: UIKitIconButtonDecoration(
      iconColor: getIconColor(variant: .secondary),
      color: getBackgroundColor(variant: .secondary),
      borderRadius: .circular(40),
    ).copyWith(decoration: decoration),
  );

  factory UIKitIconButton.tertiary(
    AssetGenImage icon, {
    VoidCallback? onTap,
    double size = 40,
    double? iconSize,
    UIKitIconButtonDecoration? decoration,
  }) => UIKitIconButton(
    icon,
    onTap: onTap,
    size: size,
    iconSize: iconSize,
    decoration: UIKitIconButtonDecoration(
      iconColor: getIconColor(variant: .tertiary),
      color: getBackgroundColor(variant: .tertiary),
      borderRadius: .circular(40),
    ).copyWith(decoration: decoration),
  );

  Color? get _color {
    return decoration?.color ?? getBackgroundColor(variant: variant);
  }

  Color get _iconColor {
    return decoration?.iconColor ?? getIconColor(variant: variant);
  }

  BorderRadius get _borderRadius {
    return decoration?.borderRadius ?? .circular(40);
  }

  BoxBorder? get _border {
    return decoration?.border;
  }

  @override
  Widget build(BuildContext context) {
    final isEnabled = enable && !isLoading;

    return Material(
      type: MaterialType.transparency,
      color: _color,
      child: Ink(
        height: AppSetting.setHeight(size),
        width: AppSetting.setHeight(size),
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          color: _color,
          border: _border,
        ),
        child: InkWell(
          borderRadius: _borderRadius,
          onTap: isEnabled ? onTap : null,
          child: Center(
            child: isLoading
                ? SizedBox(
                    height: AppSetting.setWidth(14),
                    width: AppSetting.setWidth(14),
                    child: CircularProgressIndicator(
                      color: _iconColor,
                      strokeWidth: 2,
                    ),
                  )
                : icon.image(
                    height: AppSetting.setHeight(iconSize ?? (size / 2)),
                    width: AppSetting.setHeight(iconSize ?? (size / 2)),
                    color: _iconColor,
                  ),
          ),
        ),
      ),
    );
  }
}

class UIKitIconButtonDecoration {
  final Color? color;
  final Color? iconColor;
  final BorderRadius? borderRadius;
  final BoxBorder? border;

  const UIKitIconButtonDecoration({
    this.color,
    this.iconColor,
    this.borderRadius,
    this.border,
  });

  UIKitIconButtonDecoration copyWith({UIKitIconButtonDecoration? decoration}) =>
      UIKitIconButtonDecoration(
        color: decoration?.color ?? color,
        iconColor: decoration?.iconColor ?? iconColor,
        borderRadius: decoration?.borderRadius ?? borderRadius,
        border: decoration?.border ?? border,
      );
}

class UIKitIcon extends $AssetsIconsGen {
  UIKitIcon._() : super();
}
