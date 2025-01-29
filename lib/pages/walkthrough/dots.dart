
import 'package:flutter/material.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';

class Dots extends StatelessWidget {
  Color? color;
  Dots({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: DeviceWidth.s3),
        height: DeviceHeight.s10,
        width: DeviceWidth.s10,
        decoration: BoxDecoration(
          color: color ?? CColors.primary,
          borderRadius: BorderRadius.circular(DeviceRadius.s10/2)
        ),
      );
  }
}