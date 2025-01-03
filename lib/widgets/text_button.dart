import 'package:flutter/material.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/widgets/text_view.dart';


class AppPrimaryButton extends StatelessWidget {
  final String? text;
  final Color? buttonColor;
  final Color? textColor;
  final double? textSize;
  final FontWeight? fontWeight;
  final Function? onPressed; // CallBack functions
  const AppPrimaryButton({super.key, this.text, this.buttonColor, this.textColor, this.textSize, this.fontWeight, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed == null ? {}: onPressed!(), 
      style: TextButton.styleFrom(backgroundColor: buttonColor ?? CColors.primary),
      child: TextView(title: text ?? '',color: textColor ?? CColors.white,fontSize: textSize,fontWeight: fontWeight ?? FontWeight.w500));
  }
}