
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/tabbars/tababrs_controller.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TababrsController>(builder: (_, viewModel, child) => Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: DeviceHeight.s10),
            const TextView(title: "Payment Method"),
            Container(
              margin: EdgeInsets.only(top: DeviceHeight.s5),
              padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s5),
              decoration: BoxDecoration(
                border: Border.all(color: CColors.textGrey)
              ),
              child: Row(children: [
                Expanded(
                  child: DropdownButton(
                    hint: TextView(title: 'Select Payment Method'),
                    isExpanded: true,
                    value: viewModel.selectedPaymentMethod,
                    items: const [
                      DropdownMenuItem(value: 'PhonePe',child: TextView(title: "PhonePe")),
                      DropdownMenuItem(value: 'Google Pay',child: TextView(title: "Google Pay")),
                      DropdownMenuItem(value: 'Bank Transfer',child: TextView(title: "Bank Transfer")),
                  
                  ], onChanged: (selectedValue) => viewModel.onPaymentMethodSelected(selectedValue)),
                )
              ]),
            )
          ],
        ),
      ),
    ));
  }
}