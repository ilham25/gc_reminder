import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gc_reminder/presentation/reminder/widgets/form/reminder_create_form.dart';

class ReminderUpdateForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  final Function(bool isValid)? onValidate;
  final Map<String, dynamic> initialValue;

  const ReminderUpdateForm({
    super.key,
    required this.formKey,
    this.onValidate,
    this.initialValue = const {},
  });

  @override
  Widget build(BuildContext context) {
    return ReminderCreateForm(
      formKey: formKey,
      onValidate: onValidate,
      initialValue: initialValue,
    );
  }
}
