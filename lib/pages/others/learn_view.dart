
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/others/learn_controller.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_button.dart';
import 'package:society_hub/widgets/text_view.dart';

class LearnView extends StatelessWidget {
  const LearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LearnController>(builder: (context, obj, xyz) => Scaffold(
        body: SafeArea(child: Column(
          children: [
            SizedBox(height: DeviceHeight.s80),
            Visibility(
              visible: obj.isVisibleText,
              child: TextView(title: "title")),
            
            SizedBox(height: DeviceHeight.s80),
            AppPrimaryButton(
              text: "Click Me",
              onPressed: () => obj.onChangeText(),
            )
          ],
        )),
    ));
  }
}