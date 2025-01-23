
import 'package:flutter/material.dart';
import 'package:society_hub/pages/visitors/label_value.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_button.dart';

class VisitorRequestCard extends StatelessWidget {
  const VisitorRequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(DeviceRadius.s10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DeviceRadius.s10),
          border: Border.all(color: CColors.visitorCardBorderColor),
          boxShadow: [BoxShadows.boxShadow],
          gradient: LinearGradient(
            colors: [CColors.gradientLightViolet, CColors.gradientDarkViolet],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0, 1]
          )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Assets.visitorProfile,height: DeviceHeight.s150,width: DeviceWidth.s130,fit: BoxFit.cover),
            SizedBox(width: DeviceWidth.s5),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LabelValue(label: 'Name',value: 'Rohan Mehta'),
                  SizedBox(height: DeviceHeight.s5),
                  Row(children: [
                    Expanded(child: LabelValue(label: 'Date',value: '16/8/2024')),
                    Expanded(child: LabelValue(label: 'Time',value: '09:30 AM')),
                  ]),
                  SizedBox(height: DeviceHeight.s5),
                  LabelValue(label: 'Purpose',value: 'Meeting'),
                  SizedBox(height: DeviceHeight.s10),
                  Row(children: [
                    Expanded(child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(DeviceRadius.s20),
                        gradient: LinearGradient(
                          colors: [CColors.orange2,CColors.orange1],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: const [0,1]
                        )
                      ),
                      child: AppPrimaryButton(
                        text: 'Approve',
                        height: DeviceHeight.s30,
                        buttonColor: Colors.transparent,
                        fontWeight: FontWeight.w400,
                        textSize: FontSizes.s14
                      ),
                    )),
                    SizedBox(width: DeviceWidth.s8),
                    Expanded(child: AppPrimaryButton(
                      text: 'Decline',
                      textColor: CColors.black,
                      height: DeviceHeight.s30,
                      borderColor: CColors.orange1,
                      buttonColor: CColors.white,
                      fontWeight: FontWeight.w400,
                      textSize: FontSizes.s14
                    )),
                  ]),
                ],
              ),
            )
          ],
        ),
      );
  }
}