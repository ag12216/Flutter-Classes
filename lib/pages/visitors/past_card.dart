
import 'package:flutter/material.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class PastCard extends StatelessWidget {
  const PastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: DeviceHeight.s8,left: DeviceWidth.s5,right: DeviceWidth.s5),
      decoration: BoxDecoration(
        color: CColors.white,
        borderRadius: BorderRadius.circular(DeviceRadius.s20),
        boxShadow: [BoxShadows.boxShadow]
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(DeviceRadius.s10),
            child: Row(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(DeviceHeight.s60/2),
                  child: Image.asset(Assets.logo,height: DeviceHeight.s60,width: DeviceWidth.s60,fit: BoxFit.cover)),
                  SizedBox(width: DeviceWidth.s12),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextView(title: 'Meeting',color: CColors.black,fontSize: FontSizes.s15,fontWeight: FontWeight.w500),
                        TextView(title: 'Aditya Verma',color: CColors.greyText,fontSize: FontSizes.s14),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 2,horizontal: DeviceWidth.s10),
                          decoration: BoxDecoration(
                            color: CColors.black,
                            borderRadius: BorderRadius.circular(DeviceRadius.s20)
                          ),
                          child: TextView(title: 'Left',color: CColors.white,fontSize: FontSizes.s12,fontWeight: FontWeight.w300,textAlign: TextAlign.center)),
                        SizedBox(height: DeviceHeight.s5),
                        TextView(title: '12th Oct 2024',color: CColors.black,fontSize: FontSizes.s13,fontWeight: FontWeight.w300,textAlign: TextAlign.center),
                      ],
                    ),
                  ),
            ]),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: DeviceHeight.s10,horizontal: DeviceWidth.s10),
            decoration: BoxDecoration(
              color: CColors.checkInOutBg,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(DeviceRadius.s20),bottomRight: Radius.circular(DeviceRadius.s20)),
            ),
            child: Row(children: [
              Expanded(
                child: Row(children: [
                  TextView(title: 'Check in: ',fontSize: FontSizes.s13,fontWeight: FontWeight.w300),
                  TextView(title: '09:30 PM',fontSize: FontSizes.s14,fontWeight: FontWeight.w600,color: CColors.orange1),
                ]),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  TextView(title: 'Check Out: ',fontSize: FontSizes.s13,fontWeight: FontWeight.w300),
                  TextView(title: '11:30 PM',fontSize: FontSizes.s14,fontWeight: FontWeight.w600,color: CColors.orange1),
                ]),
              )
            ]),
          )

        ],
      ),
    );
  }
}