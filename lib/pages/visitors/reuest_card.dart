
import 'package:flutter/material.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class RequestCard extends StatelessWidget {
  String? header;
  RequestCard({super.key, this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: DeviceHeight.s10,left: DeviceWidth.s8,right: DeviceWidth.s8),
      padding: EdgeInsets.all(DeviceRadius.s10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DeviceRadius.s10),
        boxShadow: [BoxShadows.boxShadow],
        gradient: LinearGradient(
          colors: [CColors.white, CColors.gradientDarkWhite],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0, 1]
        )
      ),
      child: Row(
        children: [
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
            Visibility(
              visible: header?.toLowerCase() == 'UPcoming'.toLowerCase(),
              child: Expanded(
                child: Row(
                  children: [
                    SizedBox(width: DeviceWidth.s20),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Icon(Icons.timer,color: CColors.orange1),
                          SizedBox(height: DeviceHeight.s5),
                          TextView(title: '11:00 AM',color: CColors.greyText,fontSize: FontSizes.s12,textAlign: TextAlign.center),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}