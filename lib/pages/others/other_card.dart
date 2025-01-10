
import 'package:flutter/material.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class OtherCard extends StatelessWidget {
  int? value;
  OtherCard({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
        margin: EdgeInsets.only(left: DeviceWidth.s10,right: DeviceWidth.s10,bottom: DeviceHeight.s5),
        padding: EdgeInsets.all(DeviceRadius.s10),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(DeviceRadius.s10)
        ),
        child: Row(children: [
        Image.asset(Assets.logo,height: DeviceHeight.s50,width: DeviceWidth.s50,fit: BoxFit.cover),
        SizedBox(width: DeviceWidth.s10),
        Expanded(
          child: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.stretch,children: [
            TextView(title: "Title ${(value ?? 0) + 1}",fontSize: FontSizes.s16,fontWeight: FontWeight.w400),
            SizedBox(height: DeviceHeight.s2),
            TextView(title: "Title 2",fontSize: FontSizes.s10,),
          ]),
        ),

      ]));
  }
}