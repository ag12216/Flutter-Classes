
import 'package:flutter/material.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class TabHeader extends StatelessWidget {
  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;
  final String? title;
  const TabHeader({super.key, this.title, this.bgColor, this.textColor, this.borderColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s8,vertical: DeviceHeight.s4),
        decoration: BoxDecoration(
          color: bgColor ?? Colors.white,
          border: Border.all(color: borderColor ?? Colors.black.withValues(alpha: 0.4)),
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextView(title: title,fontSize: 15,fontWeight: FontWeight.w500,color: textColor ??Colors.black));
  }
}