
import 'package:flutter/material.dart';
import 'package:society/resources/ccolors.dart';
import 'package:society/resources/constant.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Widget? suffixIcon;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final bool? isPasswordField;

  const AppTextField({super.key, required this.controller, this.hintText, this.suffixIcon, this.fontSize, this.fontWeight, this.textColor, this.isPasswordField = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: isPasswordField ?? false,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          labelStyle: TextStyle(fontFamily: poppins, fontSize: fontSize ?? 16, fontWeight: fontWeight ?? FontWeight.w300,color: textColor ?? CColors.black),
          hintStyle: TextStyle(fontFamily: poppins, fontSize: 16, fontWeight: FontWeight.w300,color: CColors.black.withOpacity(0.3)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey.
          withOpacity(0.5))),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
        ),
      );
  }
}