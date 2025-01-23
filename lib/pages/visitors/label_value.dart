
import 'package:flutter/material.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class LabelValue extends StatelessWidget {
  String? label;
  String? value;
  LabelValue({super.key, this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextView(title: '$label: ',color: CColors.greyText,fontSize: FontSizes.s14),
          TextView(title: value,color: CColors.black,fontSize: FontSizes.s15,fontWeight: FontWeight.w500),
        ],
      );
  }
}