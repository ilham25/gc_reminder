import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/routing/route.dart';
import 'package:gc_reminder/theme/theme.dart';

class UIKitDialog {
  static final AppRouter _router = inject<AppRouter>();

  static Future<T?> show<T>({
    required String title,
    required String description,
    required List<UIKitButton> actions,
    bool barrierDismissible = true,
  }) async {
    assert(
      actions.length == 2 || actions.length == 3,
      "Actions must be 2 or 3",
    );

    return await showDialog(
      context: _router.navigatorKey.currentContext!,
      useSafeArea: true,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: .circular(16)),
          child: Padding(
            padding: .symmetric(
              horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
              vertical: AppSetting.setHeight(MyTheme.defaultPadding),
            ),
            child: Column(
              mainAxisSize: .min,
              children: [
                Padding(
                  padding: .symmetric(
                    horizontal: AppSetting.setWidth(8),
                    vertical: AppSetting.setHeight(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: MyTheme.style.heading.h3,
                        textAlign: .center,
                        maxLines: 1,
                        overflow: .ellipsis,
                      ),
                      Space.h(8),
                      Text(
                        description,
                        style: MyTheme.style.body.s.copyWith(
                          color: MyTheme.color.palette.dark.light,
                        ),
                        textAlign: .center,
                        maxLines: 3,
                        overflow: .ellipsis,
                      ),
                    ],
                  ),
                ),
                Space.h(20),
                if (actions.length == 2)
                  Row(
                    children: [
                      Flexible(flex: 1, fit: .tight, child: actions[0]),
                      Space.w(8),
                      Flexible(flex: 1, fit: .tight, child: actions[1]),
                    ],
                  ),
                if (actions.length == 3)
                  Column(
                    crossAxisAlignment: .stretch,
                    children: [
                      actions[0],
                      Space.h(8),
                      actions[1],
                      Space.h(8),
                      actions[2],
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
