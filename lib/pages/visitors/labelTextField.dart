
import 'package:flutter/material.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_field.dart';
import 'package:society_hub/widgets/text_view.dart';

class LabelTextField extends StatelessWidget {
  String? label;
  String? hintText;
  final TextEditingController controller;
  TextInputType? textInputType;
  LabelTextField({super.key, this.label, this.hintText, required this.controller, this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextView(title: label),
        SizedBox(height: DeviceHeight.s2),
        AppTextField(
          controller: controller,
          hintText: hintText,
          textInputype: textInputType,
          )
      ],
    );
  }
}