import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gc_reminder/bloc/reminder/reminder_update/reminder_update_bloc.dart';
import 'package:gc_reminder/core/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/toast/toast.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/presentation/reminder/widgets/form/reminder_update_form.dart';
import 'package:gc_reminder/routing/route.dart';

class ReminderUpdateBottomSheet {
  static final AppRouter _router = inject<AppRouter>();

  static Future<bool?> show({required ReminderModel reminder}) async {
    return await showModalBottomSheet(
      context: _router.navigatorKey.currentContext!,
      isDismissible: true,
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: false,
      builder: (context) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => ReminderUpdateBloc())],
          child: _BottomSheet(reminder: reminder),
        );
      },
    );
  }
}

class _BottomSheet extends StatelessWidget {
  final ReminderModel reminder;
  const _BottomSheet({required this.reminder});

  Future _onSubmit({
    required BuildContext context,
    required GlobalKey<FormBuilderState> formKey,
  }) async {
    final bool isValid = formKey.currentState?.saveAndValidate() ?? false;
    if (!isValid) return;

    final formData = formKey.currentState!.value;

    context.read<ReminderUpdateBloc>().submit(reminder.id, formData);
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    final isFormValid = ValueNotifier<bool>(false);

    return MultiBlocListener(
      listeners: [
        BlocListener<ReminderUpdateBloc, ReminderUpdateBlocState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              error: (message) {
                UIKitToast.danger(
                  context: context,
                  title: "Update Reminder Error",
                  description: message,
                );
              },
              success: () {
                UIKitToast.success(
                  context: context,
                  title: "Update Reminder Success",
                  description: "Reminder has been updated",
                );
                context.router.pop(true);
              },
            );
          },
        ),
      ],
      child: UIKitBottomSheet(
        title: "Update Reminder",
        action: ValueListenableBuilder(
          valueListenable: isFormValid,
          builder: (context, value, child) =>
              BlocBuilder<ReminderUpdateBloc, ReminderUpdateBlocState>(
                builder: (context, state) => UIKitButton(
                  title: "Submit",
                  enable: value,
                  isLoading: state.maybeWhen(
                    orElse: () => false,
                    loading: () => true,
                  ),
                  onTap: () {
                    _onSubmit(context: context, formKey: formKey);
                  },
                ),
              ),
        ),
        child: ReminderUpdateForm(
          formKey: formKey,
          onValidate: (isValid) {
            isFormValid.value = isValid;
          },
          initialValue: reminder.toReminderUpdateForm(),
        ),
      ),
    );
  }
}
