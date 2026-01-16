import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/form/base_form.dart';
import 'package:gc_reminder/core/widgets/input/primary_date_picker.dart';
import 'package:gc_reminder/core/widgets/input/text_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ReminderCreateForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  final Function(bool isValid)? onValidate;
  final Map<String, dynamic> initialValue;

  const ReminderCreateForm({
    super.key,
    required this.formKey,
    this.onValidate,
    this.initialValue = const {},
  });

  @override
  Widget build(BuildContext context) {
    return UIKitBaseForm(
      formKey: formKey,
      onValidate: onValidate,
      initialValue: initialValue,
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .stretch,
        children: [
          FormBuilderField<String>(
            name: "title",
            initialValue: initialValue["title"],
            builder: (field) => UIKitTextField(
              title: "Title",
              placeholder: "Enter Title",
              onChanged: field.didChange,
              errorText: field.errorText,
              initialValue: field.value,
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
          ),
          Space.h(8),
          FormBuilderField<String>(
            name: "description",
            initialValue: initialValue["description"],
            builder: (field) => UIKitTextField.textArea(
              title: "Description",
              placeholder: "Enter Description",
              onChanged: field.didChange,
              errorText: field.errorText,
              initialValue: field.value,
            ),
          ),
          Space.h(8),
          FormBuilderField<DateTime>(
            name: "startAt",
            initialValue: initialValue["startAt"],
            builder: (field) => PrimaryDatePicker(
              title: "Start",
              hintText: "Pick Time",
              mode: .dateAndTime,
              onChanged: field.didChange,
              value: field.value,
              dateFormat: "dd MMM yyyy, HH:mm",
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
          ),
          Space.h(8),
          FormBuilderField<DateTime>(
            name: "endAt",
            initialValue: initialValue["endAt"],
            builder: (field) => PrimaryDatePicker(
              title: "End",
              hintText: "Pick Time",
              mode: .dateAndTime,
              onChanged: field.didChange,
              value: field.value,
              dateFormat: "dd MMM yyyy, HH:mm",
            ),
          ),
        ],
      ),
    );
  }
}
