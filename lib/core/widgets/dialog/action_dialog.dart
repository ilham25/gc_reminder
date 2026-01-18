import 'package:auto_route/auto_route.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/dialog/dialog.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/routing/route.dart';
import 'package:gc_reminder/theme/theme.dart';

class UIKitConfirmDialog {
  static final AppRouter _router = inject<AppRouter>();

  static Future<T?> positive<T>({
    String title = "Are you sure",
    String description = "Are you sure you want to take that action?",
    String confirmText = "Confirm",
    Future Function()? onConfirm,
    bool isLoading = false,
  }) async {
    final context = _router.navigatorKey.currentContext!;
    return UIKitDialog.show<T>(
      title: title,
      description: description,
      actions: [
        UIKitButton.secondary(
          title: "Cancel",
          decoration: UIKitButtonDecoration(
            borderColor: MyTheme.color.danger,
            textColor: MyTheme.color.danger,
          ),
          onTap: () {
            context.router.maybePop();
          },
        ),
        UIKitButton(
          title: confirmText,
          decoration: UIKitButtonDecoration(
            color: MyTheme.color.danger,
            borderColor: MyTheme.color.danger,
          ),
          onTap:
              onConfirm ??
              () {
                context.router.maybePop(true);
              },
        ),
      ],
    );
  }

  static Future<T?> negative<T>({
    String title = "Are you sure",
    String description = "Are you sure you want to take that action?",
    String confirmText = "Confirm",
    Future Function()? onConfirm,
    bool isLoading = false,
  }) async {
    final context = _router.navigatorKey.currentContext!;
    return UIKitDialog.show<T>(
      title: title,
      description: description,
      actions: [
        UIKitButton.secondary(
          title: "Cancel",
          decoration: UIKitButtonDecoration(
            borderColor: MyTheme.color.danger,
            textColor: MyTheme.color.danger,
          ),
          onTap: () {
            context.router.maybePop();
          },
        ),
        UIKitButton(
          title: confirmText,
          decoration: UIKitButtonDecoration(
            color: MyTheme.color.danger,
            borderColor: MyTheme.color.danger,
          ),
          isLoading: isLoading,
          onTap:
              onConfirm ??
              () {
                context.router.maybePop(true);
              },
        ),
      ],
    );
  }
}
