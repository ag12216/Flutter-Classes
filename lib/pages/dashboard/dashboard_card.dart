
import 'package:flutter/material.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class DashboardCard extends StatelessWidget {
  String? title;
  String? image;
  Color? color;
  DashboardCard({super.key, this.title, this.image, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(vertical: DeviceHeight.s10, horizontal: DeviceWidth.s20),
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(DeviceRadius.s10),
      boxShadow: [
        BoxShadow(
          color: CColors.textGrey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 4,
          offset: Offset(0.5, 1.0)
        )
      ]
    ),
    child: Column(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.stretch,children: [
      Container(
        padding: EdgeInsets.all(DeviceRadius.s10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DeviceRadius.s40)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(DeviceRadius.s40),
          child: Image.asset(image ?? Assets.logo, height: DeviceHeight.s60,width: DeviceWidth.s60,fit: BoxFit.contain))),
      TextView(title: title,fontWeight: FontWeight.w400,textAlign: TextAlign.center),
    ]),
  );
  }
}