import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class UIKitBaseForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  final Function()? onChanged;
  final Map<String, dynamic> initialValue;
  final Function(bool isValid)? onValidate;
  final Widget child;
  final bool canPop;
  final Function(bool didPop, Object? result)? onPopInvokedWithResult;

  const UIKitBaseForm({
    super.key,
    required this.formKey,
    this.onChanged,
    this.initialValue = const {},
    this.onValidate,
    required this.child,
    this.canPop = true,
    this.onPopInvokedWithResult,
  });

  void _onValidate() {
    if (onValidate != null) {
      onValidate!(
        formKey.currentState?.validate(focusOnInvalid: false) ?? false,
      );
    } else {
      formKey.currentState?.validate(focusOnInvalid: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: initialValue,
      canPop: canPop,
      onPopInvokedWithResult: onPopInvokedWithResult,
      onChanged: () {
        _onValidate();

        if (onChanged != null) {
          onChanged!();
        }
      },
      child: child,
    );
  }
}
