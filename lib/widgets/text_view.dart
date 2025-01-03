import 'package:flutter/material.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/constant.dart';


class TextView extends StatelessWidget {
  final String? title;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final bool? isUnderLine;
  
  const TextView({super.key, required this.title, this.fontWeight, this.fontSize, this.color, this.isUnderLine,this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(title ?? '',style: TextStyle(fontFamily: poppins,fontWeight: fontWeight ?? FontWeight.w300,fontSize: fontSize ?? FontSizes.s15,color: color ?? CColors.black,decoration: isUnderLine == true? TextDecoration.underline : null ),textAlign: textAlign ?? TextAlign.left);
  }
}