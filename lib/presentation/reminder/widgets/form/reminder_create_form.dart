import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/content/divider.dart';
import 'package:gc_reminder/core/widgets/form/base_form.dart';
import 'package:gc_reminder/core/widgets/input/primary_date_picker.dart';
import 'package:gc_reminder/core/widgets/input/radio_button.dart';
import 'package:gc_reminder/core/widgets/input/text_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gc_reminder/core/widgets/input/toggle.dart';
import 'package:gc_reminder/domain/models/map/map_model.dart';
import 'package:gc_reminder/presentation/common/widgets/map/primary_map.dart';
import 'package:gc_reminder/theme/theme.dart';

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
          Space.h(16),
          UIKitDivider(),
          Space.h(16),
          Text(
            "Date & Time",
            style: MyTheme.style.heading.h5.copyWith(
              color: MyTheme.color.palette.dark.light,
            ),
          ),
          Space.h(16),
          Container(
            decoration: BoxDecoration(
              color: MyTheme.color.palette.light.light,
              borderRadius: .circular(12),
            ),
            padding: .symmetric(
              horizontal: AppSetting.setWidth(12),
              vertical: AppSetting.setHeight(12),
            ),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                FormBuilderField<DateTime>(
                  name: "startDate",
                  initialValue: initialValue["startDate"],
                  builder: (field) => PrimaryDatePicker(
                    title: "Date",
                    hintText: "Pick Date",
                    onChanged: field.didChange,
                    value: field.value,
                    errorText: field.errorText ?? "",
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                Space.h(8),
                FormBuilderField<DateTime>(
                  name: "startTime",
                  initialValue: initialValue["startTime"],
                  builder: (field) => PrimaryDatePicker(
                    title: "Time",
                    hintText: "Pick Time",
                    mode: .time,
                    onChanged: field.didChange,
                    value: field.value,
                    dateFormat: "HH:mm",
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
              ],
            ),
          ),
          Space.h(16),
          UIKitDivider(),
          Space.h(10),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Flexible(
                fit: .tight,
                child: Text(
                  "Place",
                  style: MyTheme.style.heading.h5.copyWith(
                    color: MyTheme.color.palette.dark.light,
                  ),
                ),
              ),
              UIKitToggle(value: true),
            ],
          ),
          Space.h(10),
          Container(
            decoration: BoxDecoration(
              color: MyTheme.color.palette.light.light,
              borderRadius: .circular(12),
            ),
            padding: .symmetric(
              horizontal: AppSetting.setWidth(12),
              vertical: AppSetting.setHeight(12),
            ),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                ...[
                  Text("Location Name", style: MyTheme.style.heading.h5),
                  Space.h(2),
                  Text("Coba test alamat", style: MyTheme.style.body.m),
                  Space.h(8),
                  Text("Trigger", style: MyTheme.style.heading.h5),
                  Space.h(8),
                  Row(
                    children: [
                      Row(
                        children: [
                          UIKitRadioButton(onTap: () {}, selected: true),
                          Space.w(4),
                          Text("Arriving", style: MyTheme.style.action.m),
                        ],
                      ),
                      Space.w(16),
                      Row(
                        children: [
                          UIKitRadioButton(onTap: () {}, selected: false),
                          Space.w(4),
                          Text("Leaving", style: MyTheme.style.action.m),
                        ],
                      ),
                    ],
                  ),
                  Space.h(16),
                  Container(
                    clipBehavior: .antiAlias,
                    height: AppSetting.setHeight(180),
                    decoration: BoxDecoration(
                      color: MyTheme.color.palette.light.dark,
                      borderRadius: .circular(12),
                    ),
                    child: PrimaryMap(
                      markers: [
                        MapMarkerModel(
                          latitude: -6.175392,
                          longitude: 106.827153,
                        ),
                      ],
                    ),
                  ),
                  Space.h(16),
                ],
                UIKitButton.secondary(
                  title: "Pick Location",
                  onTap: () {
                    //
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
