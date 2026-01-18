import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gc_reminder/core/widgets/form/base_form.dart';
import 'package:gc_reminder/core/widgets/input/dropdown.dart';
import 'package:gc_reminder/domain/models/common/label_value.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';

class ReminderFilterForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  final Map<String, dynamic> initialValue;

  const ReminderFilterForm({
    super.key,
    required this.formKey,
    this.initialValue = const {},
  });

  @override
  Widget build(BuildContext context) {
    return UIKitBaseForm(
      formKey: formKey,
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .stretch,
        children: [
          FormBuilderField<LabelValue<ReminderType>>(
            name: "type",
            initialValue: initialValue["type"],
            builder: (field) => UIKitDropdown<LabelValue<ReminderType>>(
              title: "Type",
              hintText: "Select Reminder Type",
              onChanged: field.didChange,
              onClear: () {
                field.didChange(null);
              },
              errorText: field.errorText ?? "",
              itemLabel: (value) => value.label,
              items: const [
                LabelValue(label: "Time", value: .time),
                LabelValue(label: "Location", value: .location),
              ],
              value: field.value,
            ),
          ),
        ],
      ),
    );
  }
}
