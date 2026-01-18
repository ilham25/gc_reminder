import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/content/divider.dart';
import 'package:gc_reminder/core/widgets/form/base_form.dart';
import 'package:gc_reminder/core/widgets/input/calendar_input.dart';
import 'package:gc_reminder/core/widgets/input/primary_date_picker.dart';
import 'package:gc_reminder/core/widgets/input/radio_button.dart';
import 'package:gc_reminder/core/widgets/input/text_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gc_reminder/core/widgets/input/toggle.dart';
import 'package:gc_reminder/domain/models/location/select_location_model.dart';
import 'package:gc_reminder/domain/models/map/map_model.dart';
import 'package:gc_reminder/presentation/common/widgets/map/primary_map.dart';
import 'package:gc_reminder/routing/route.gr.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:latlong2/latlong.dart';

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
    final ValueNotifier<bool?> isLocationReminder = ValueNotifier<bool?>(
      initialValue["isLocationReminder"],
    );
    final ValueNotifier<String?> place = ValueNotifier<String?>(
      initialValue["place"],
    );
    final ValueNotifier<LatLng?> position = ValueNotifier<LatLng?>(
      initialValue["position"],
    );

    return UIKitBaseForm(
      formKey: formKey,
      onValidate: onValidate,
      initialValue: initialValue,
      onChanged: () {
        isLocationReminder.value =
            formKey.currentState?.fields["isLocationReminder"]?.value as bool?;
        place.value = formKey.currentState?.fields["place"]?.value as String?;
        position.value =
            formKey.currentState?.fields["position"]?.value as LatLng?;

        debugPrint(isLocationReminder.value.toString());
      },
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
                  initialValue: initialValue["startDate"] ?? DateTime.now(),
                  builder: (field) => UIKitCalendarInput(
                    title: "Date",
                    onChanged: field.didChange,
                    value: field.value,
                    errorText: field.errorText,
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
              FormBuilderField<bool>(
                name: "isLocationReminder",
                builder: (field) {
                  return UIKitToggle(
                    value: field.value == true,
                    onChanged: field.didChange,
                  );
                },
              ),
            ],
          ),
          FormBuilderField<String>(
            name: "place",
            initialValue: initialValue["place"],
            builder: (field) => SizedBox.shrink(),
          ),
          FormBuilderField<LatLng>(
            name: "position",
            initialValue: initialValue["position"],
            builder: (field) => SizedBox.shrink(),
          ),
          ValueListenableBuilder(
            valueListenable: isLocationReminder,
            builder: (context, value, child) {
              if (value != true) return SizedBox.shrink();

              return Column(
                children: [
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
                        ValueListenableBuilder(
                          valueListenable: place,
                          builder: (context, placeValue, child) {
                            if (placeValue == null) return SizedBox.shrink();

                            return Column(
                              crossAxisAlignment: .stretch,
                              children: [
                                Text(
                                  "Location Name",
                                  style: MyTheme.style.heading.h5,
                                ),
                                Space.h(2),
                                Text(placeValue, style: MyTheme.style.body.m),
                                Space.h(8),
                                Text(
                                  "Trigger",
                                  style: MyTheme.style.heading.h5,
                                ),
                                Space.h(8),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        UIKitRadioButton(
                                          onTap: () {},
                                          selected: true,
                                        ),
                                        Space.w(4),
                                        Text(
                                          "Arriving",
                                          style: MyTheme.style.action.m,
                                        ),
                                      ],
                                    ),
                                    Space.w(16),
                                    Row(
                                      children: [
                                        UIKitRadioButton(
                                          onTap: () {},
                                          selected: false,
                                        ),
                                        Space.w(4),
                                        Text(
                                          "Leaving",
                                          style: MyTheme.style.action.m,
                                        ),
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
                                  child: ValueListenableBuilder(
                                    valueListenable: position,
                                    builder: (context, positionValue, child) {
                                      return PrimaryMap(
                                        markers: positionValue == null
                                            ? []
                                            : [
                                                MapMarkerModel(
                                                  latitude:
                                                      positionValue.latitude,
                                                  longitude:
                                                      positionValue.longitude,
                                                ),
                                              ],
                                      );
                                    },
                                  ),
                                ),

                                Space.h(16),
                              ],
                            );
                          },
                        ),
                        ValueListenableBuilder(
                          valueListenable: position,
                          builder: (context, value, child) {
                            return UIKitButton.secondary(
                              title: "Pick Location",
                              onTap: () async {
                                final result = await context.router
                                    .push<SelectLocationModel>(
                                      SelectLocationRoute(
                                        markers: value == null
                                            ? []
                                            : [
                                                MapMarkerModel(
                                                  latitude: value.latitude,
                                                  longitude: value.longitude,
                                                ),
                                              ],
                                      ),
                                    );
                                if (result == null) return;

                                formKey.currentState?.fields["place"]
                                    ?.didChange(result.placemark.fullAddress);
                                formKey.currentState?.fields["position"]
                                    ?.didChange(result.position);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
