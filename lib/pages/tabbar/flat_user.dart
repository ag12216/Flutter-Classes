
import 'package:flutter/material.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class FlatUser extends StatelessWidget {
  bool isLastIndex = false;
  final String? profileImage;
  final String? name;
  final String? userType;
  FlatUser({super.key, this.profileImage, this.name, this.userType, this.isLastIndex= false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DeviceHeight.s8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.black.withValues(alpha: 0.2))),
        borderRadius: isLastIndex ? BorderRadius.only(bottomLeft: Radius.circular(DeviceRadius.s20), bottomRight: Radius.circular(DeviceRadius.s20)) : null
      ),
      child: Row(  
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(DeviceHeight.s40/2),
            child: Image.asset(profileImage ?? Assets.committee, height: DeviceHeight.s40,width: DeviceWidth.s40,fit: BoxFit.cover)), 
          SizedBox(width: DeviceWidth.s10),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextView(title: name, fontSize: FontSizes.s16,fontWeight: FontWeight.w500),
                SizedBox(height: DeviceHeight.s2),
                TextView(title: userType, fontSize: FontSizes.s14,fontWeight: FontWeight.w400),
              ]),
          ),
      
          const Icon(Icons.arrow_forward_ios_sharp)
      
        ]),
    );
  }
}