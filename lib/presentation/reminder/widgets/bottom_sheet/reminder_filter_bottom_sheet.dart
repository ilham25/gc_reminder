import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_filter_model.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/presentation/reminder/widgets/form/reminder_filter_form.dart';
import 'package:gc_reminder/routing/route.dart';

class ReminderFilterBottomSheet {
  static final AppRouter _router = inject<AppRouter>();

  static Future<ReminderFilterModel?> show({
    Map<String, dynamic> initialValue = const {},
  }) async {
    return await showModalBottomSheet(
      context: _router.navigatorKey.currentContext!,
      isDismissible: true,
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: false,
      builder: (context) {
        return _BottomSheet(initialValue: initialValue);
      },
    );
  }
}

class _BottomSheet extends StatelessWidget {
  final Map<String, dynamic> initialValue;
  const _BottomSheet({this.initialValue = const {}});

  Future _onSubmit({
    required BuildContext context,
    required GlobalKey<FormBuilderState> formKey,
  }) async {
    final bool isValid = formKey.currentState?.saveAndValidate() ?? false;
    if (!isValid) return;

    final formData = formKey.currentState!.value;
    context.router.maybePop(
      ReminderFilterModel.fromReminderFilterForm(formData),
    );
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();

    return UIKitBottomSheet(
      title: "Filter",
      action: Row(
        children: [
          Flexible(
            fit: .tight,
            child: UIKitButton.secondary(
              title: "Cancel",
              onTap: () {
                context.router.maybePop();
              },
            ),
          ),
          Space.w(8),
          Flexible(
            fit: .tight,
            child: UIKitButton(
              title: "Filter",
              onTap: () {
                _onSubmit(context: context, formKey: formKey);
              },
            ),
          ),
        ],
      ),
      child: ReminderFilterForm(formKey: formKey, initialValue: initialValue),
    );
  }
}
