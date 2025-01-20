
import 'package:flutter/material.dart';
import 'package:society_hub/pages/tabbar/flat_user.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class FlatDetail extends StatelessWidget {
  String? title;
  FlatDetail({super.key, this.title});

  List<String> list = ['1','2'];
 
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(left: DeviceWidth.s8,right: DeviceWidth.s8, bottom: DeviceHeight.s8),
          decoration: BoxDecoration(
            color: CColors.white,
            boxShadow: [ BoxShadows.boxShadow ],
            borderRadius: BorderRadius.circular(DeviceRadius.s20)
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s15,vertical: DeviceHeight.s10),
                decoration: BoxDecoration(
                  color: CColors.lightGrey,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(DeviceRadius.s20), topRight: Radius.circular(DeviceRadius.s20))
                ),
                child: Row(children: [
                  Icon(Icons.business_outlined, size: DeviceRadius.s20),
                  SizedBox(width: DeviceWidth.s10),
                  TextView(title: 'Flat A101 ($title)',fontSize: FontSizes.s16,fontWeight: FontWeight.w400)
                ]),
              ),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (_, index){
                    return FlatUser(name: 'Jarvis',userType: 'Owner',isLastIndex: (index == (list.length - 1)),);
                  }),
              ),
            ],
          ),
        );
  }
}