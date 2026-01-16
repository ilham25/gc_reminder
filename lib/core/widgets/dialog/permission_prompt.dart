import 'package:auto_route/auto_route.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/dialog/dialog.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/routing/route.dart';

class PermissionPrompt {
  static final AppRouter _router = inject<AppRouter>();

  static Future<T?> request<T>({
    required Future<T> Function() onConfirm,
    bool isDismissible = true,
    required String title,
    required String message,
    String actionTitle = "Allow",
  }) async {
    final context = _router.navigatorKey.currentContext!;
    return await UIKitDialog.show(
      title: title,
      description: message,
      actions: [
        UIKitButton.secondary(
          title: "Cancel",
          onTap: () {
            context.router.maybePop();
          },
        ),
        UIKitButton(title: actionTitle, onTap: onConfirm),
      ],
    );
  }

  static Future<T?> denied<T>({
    required Future<T> Function() onConfirm,
    bool isDismissible = true,
    required String title,
    required String message,
    String actionTitle = "Settings",
  }) async {
    final context = _router.navigatorKey.currentContext!;
    return await UIKitDialog.show(
      title: title,
      description: message,
      actions: [
        UIKitButton.secondary(
          title: "Cancel",
          onTap: () {
            context.router.maybePop();
          },
        ),
        UIKitButton(title: actionTitle, onTap: onConfirm),
      ],
    );
  }
}
