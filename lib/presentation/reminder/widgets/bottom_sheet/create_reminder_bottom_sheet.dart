import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gc_reminder/core/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/presentation/reminder/widgets/form/create_reminder_form.dart';
import 'package:gc_reminder/routing/route.dart';

class CreateReminderBottomSheet {
  static final AppRouter _router = inject<AppRouter>();

  static Future<bool?> show() async {
    return await showModalBottomSheet(
      context: _router.navigatorKey.currentContext!,
      isDismissible: true,
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: false,
      builder: (context) {
        return const _BottomSheet();
      },
    );
  }
}

class _BottomSheet extends StatelessWidget {
  const _BottomSheet();

  Future _onSubmit({
    required BuildContext context,
    required GlobalKey<FormBuilderState> formKey,
  }) async {
    final bool isValid = formKey.currentState?.saveAndValidate() ?? false;
    if (!isValid) return;

    final formData = formKey.currentState!.value;

    debugPrint("formData: $formData");
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    final isFormValid = ValueNotifier<bool>(false);

    return UIKitBottomSheet(
      title: "Create Reminder",
      action: ValueListenableBuilder(
        valueListenable: isFormValid,
        builder: (context, value, child) {
          return UIKitButton(
            title: "Submit",
            enable: value,
            onTap: () {
              _onSubmit(context: context, formKey: formKey);
            },
          );
        },
      ),
      child: CreateReminderForm(
        formKey: formKey,
        onValidate: (isValid) {
          isFormValid.value = isValid;
        },
      ),
    );
  }
}
