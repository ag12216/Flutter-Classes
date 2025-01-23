import 'package:flutter/material.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/widgets/text_view.dart';
import 'package:society_hub/resources/constant.dart';


class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Widget? suffixIcon;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final bool? isPasswordField;
  final double? height;
  final TextInputType? textInputype;
  final String? errorText;
  final double? borderRadius;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final Function? onSubmitted;

  const AppTextField({super.key, required this.controller, this.hintText, this.suffixIcon, this.fontSize, this.fontWeight, this.textColor, this.isPasswordField = false, this.height, this.errorText, this.textInputype, this.borderRadius, this.prefixIcon, this.onSubmitted,this.textAlign});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? DeviceHeight.s50,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextField(
                controller: controller,
                obscureText: isPasswordField ?? false,
                keyboardType: textInputype ?? TextInputType.text,
                textAlign: textAlign ?? TextAlign.left,
                onSubmitted: (value) => onSubmitted != null ? onSubmitted!() : {},
                decoration: InputDecoration(
                  prefixIcon: prefixIcon,
                  hintText: hintText,
                  suffixIcon: suffixIcon,
                  labelStyle: TextStyle(fontFamily: poppins, fontSize: fontSize ?? FontSizes.s16, fontWeight: fontWeight ?? FontWeight.w300,color: textColor ?? CColors.black),
                  hintStyle: TextStyle(fontFamily: poppins,fontSize: FontSizes.s13, fontWeight: FontWeight.w300,color: CColors.black.withOpacity(0.3)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius ?? 5),borderSide: BorderSide(color: Colors.grey.
                  withOpacity(0.5))),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius ?? 5),borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius ?? 5),borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
                ),
              ),
          ),
          SizedBox(height: DeviceHeight.s2),
          if(errorText != null)
          TextView(title: errorText ?? '',color: CColors.red,fontSize: FontSizes.s8)
        ],
      ),
    );
  }
}