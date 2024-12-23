
import 'package:flutter/material.dart';
import 'package:society/resources/ccolors.dart';
import 'package:society/resources/constant.dart';

class TextView extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  
  const TextView({super.key, required this.title, this.fontWeight, this.fontSize, this.color, this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(fontFamily: poppins,fontWeight: fontWeight ?? FontWeight.w300,fontSize: fontSize ?? 15,color: color ?? CColors.black),textAlign: textAlign ?? TextAlign.left);
  }
}