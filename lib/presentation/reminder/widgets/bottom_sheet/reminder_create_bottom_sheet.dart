import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gc_reminder/bloc/reminder/reminder_create/reminder_create_bloc.dart';
import 'package:gc_reminder/core/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/toast/toast.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/presentation/reminder/widgets/form/reminder_create_form.dart';
import 'package:gc_reminder/routing/route.dart';

class ReminderCreateBottomSheet {
  static final AppRouter _router = inject<AppRouter>();

  static Future<bool?> show() async {
    return await showModalBottomSheet(
      context: _router.navigatorKey.currentContext!,
      isDismissible: true,
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: false,
      builder: (context) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => ReminderCreateBloc())],
          child: const _BottomSheet(),
        );
      },
    );
  }
}

class _BottomSheet extends StatefulWidget {
  const _BottomSheet();

  @override
  State<_BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<_BottomSheet> {
  final formKey = GlobalKey<FormBuilderState>();
  final isFormValid = ValueNotifier<bool>(false);

  Future _onSubmit() async {
    final bool isValid = formKey.currentState?.saveAndValidate() ?? false;
    if (!isValid) return;

    final formData = formKey.currentState!.value;

    context.read<ReminderCreateBloc>().submit(formData);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ReminderCreateBloc, ReminderCreateBlocState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              error: (message) {
                if (!context.mounted) return;
                UIKitToast.danger(
                  context: context,
                  title: "Create Reminder Error",
                  description: message,
                );
              },
              success: () {
                if (!context.mounted) return;
                UIKitToast.success(
                  context: context,
                  title: "Create Reminder Success",
                  description: "Reminder has been created",
                );
                context.router.maybePop(true);
              },
            );
          },
        ),
      ],
      child: UIKitBottomSheet(
        title: "Create Reminder",
        action: ValueListenableBuilder(
          valueListenable: isFormValid,
          builder: (context, value, child) =>
              BlocBuilder<ReminderCreateBloc, ReminderCreateBlocState>(
                builder: (context, state) => UIKitButton(
                  title: "Submit",
                  enable: value,
                  isLoading: state.maybeWhen(
                    orElse: () => false,
                    loading: () => true,
                  ),
                  onTap: _onSubmit,
                ),
              ),
        ),
        child: ReminderCreateForm(
          formKey: formKey,
          onValidate: (isValid) {
            isFormValid.value = isValid;
          },
        ),
      ),
    );
  }
}
