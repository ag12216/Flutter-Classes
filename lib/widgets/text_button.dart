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
  final double? height;
  final Color? borderColor;
  const AppPrimaryButton({super.key, this.text, this.buttonColor, this.textColor, this.height, this.textSize, this.fontWeight,this.borderColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextButton(
        onPressed: () => onPressed == null ? {}: onPressed!(), 
        style: TextButton.styleFrom(backgroundColor: buttonColor ?? CColors.primary,side: BorderSide(color: borderColor ?? Colors.transparent)),
        child: TextView(title: text ?? '',color: textColor ?? CColors.white,fontSize: textSize,fontWeight: fontWeight ?? FontWeight.w500)),
    );
  }
}