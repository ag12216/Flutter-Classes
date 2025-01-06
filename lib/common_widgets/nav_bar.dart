
import 'package:flutter/material.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_field.dart';
import 'package:society_hub/widgets/text_view.dart';

class NavBar extends StatelessWidget {
  
  NavBar({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: DeviceHeight.s10),
      decoration: BoxDecoration(
        color: CColors.white,
        image: const DecorationImage(image: AssetImage(Assets.navBarBackground),fit: BoxFit.contain),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(DeviceRadius.s40),bottomRight: Radius.circular(DeviceRadius.s40)),
        boxShadow: [
          BoxShadow(
            color: CColors.textGrey.withOpacity(0.2),
            spreadRadius: 8,
            blurRadius: 4,
            offset:const Offset(0.5, 1.0)
          )
        ]
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: DeviceHeight.s5),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: DeviceWidth.s15),
                child: Icon(Icons.menu,size: DeviceHeight.s30),
              ),
              Expanded(
                child: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.stretch,children: [
                  TextView(title: "Hello John!",fontSize: FontSizes.s15,fontWeight: FontWeight.w300,textAlign: TextAlign.center,),
                  SizedBox(height: DeviceHeight.s10),
                  TextView(title: "302, Wing A",fontSize: FontSizes.s18,fontWeight: FontWeight.w600,textAlign: TextAlign.center)
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(right: DeviceWidth.s15),
                child: Icon(Icons.notifications_none_rounded,size: DeviceHeight.s30),
              ),
            ]),
            SizedBox(height: DeviceHeight.s10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s20),
              child: AppTextField(
                height: DeviceHeight.s45,
                textAlign: TextAlign.center,
                borderRadius: DeviceRadius.s40,
                controller: searchController,
                hintText: "What are you looking for",
              ),
            ),
            SizedBox(height: DeviceHeight.s5),
          ]),
      ),
    );
  }
}