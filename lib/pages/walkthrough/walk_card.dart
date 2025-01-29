
import 'package:flutter/material.dart';
import 'package:society_hub/pages/walkthrough/dots.dart';
import 'package:society_hub/pages/walkthrough/walkthrough_controller.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_button.dart';
import 'package:society_hub/widgets/text_view.dart';

class WalkCard extends StatelessWidget {
  WalkthroughController? viewModel;
  WalkCard({super.key,this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(DeviceRadius.s150/2),
              child: Image.asset(viewModel?.assets[viewModel?.selectedIndex.toString()], height: DeviceHeight.s150,width: DeviceHeight.s150)),
          ),
          const Expanded(child: SizedBox.shrink()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s20,vertical: DeviceHeight.s10),
            decoration: BoxDecoration(
              color: CColors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(DeviceRadius.s50),topRight: Radius.circular(DeviceRadius.s50)),
              boxShadow: [BoxShadows.boxShadow]
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: DeviceHeight.s8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [0,1,2].map((index) => Dots(color: viewModel?.selectedIndex == index ? CColors.primary : CColors.textGrey)).toList()),
                SizedBox(height: DeviceHeight.s50),
                TextView(title: 'Improve your family safety',fontWeight: FontWeight.w600,fontSize: FontSizes.s18,textAlign: TextAlign.center),
                SizedBox(height: DeviceHeight.s20),
                TextView(title: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard',fontWeight: FontWeight.w300,fontSize: FontSizes.s14,textAlign: TextAlign.justify),
                SizedBox(height: DeviceHeight.s30),
                AppPrimaryButton(
                  onPressed: () => viewModel?.onPageChange(context,(viewModel?.selectedIndex ?? 0)+1),
                  text: viewModel?.selectedIndex == 2 ? 'Finish': 'Next',fontWeight: FontWeight.w500,textSize: FontSizes.s16),
                SizedBox(height: DeviceHeight.s10),
              ],),
          )
        ],
      );
  }
}