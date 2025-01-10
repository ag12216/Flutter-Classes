
import 'package:flutter/material.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class GridCard extends StatelessWidget {
  int? value;
  GridCard({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        margin: EdgeInsets.only(left: DeviceWidth.s10,right: DeviceWidth.s10,bottom: DeviceHeight.s5),
        padding: EdgeInsets.all(DeviceRadius.s10),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(DeviceRadius.s10)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(Assets.logo,height: DeviceHeight.s50,width: DeviceWidth.s50,fit: BoxFit.cover),
            SizedBox(height: DeviceHeight.s5),
            TextView(title: "Title ${(value ?? 0) + 1}",fontSize: FontSizes.s16,fontWeight: FontWeight.w400,textAlign: TextAlign.center),
            SizedBox(height: DeviceHeight.s2),
            TextView(title: "Title 2",fontSize: FontSizes.s10,textAlign: TextAlign.center),

      ]));
  }
}