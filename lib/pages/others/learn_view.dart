
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/others/learn_controller.dart';
import 'package:society_hub/resources/ccolors.dart';
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
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                boxShadow: [BoxShadows.boxShadow],
                gradient: LinearGradient(
                  colors: [CColors.orange1, CColors.orange2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0,1]
                  )
              ),
              child: TextView(title: "Click Me1",color: Colors.white,),
            )
          //   AppPrimaryButton(
          //     text: "Click Me",
          //     onPressed: () => obj.onChangeText(),
          //   )
          ],
        )),
    ));
  }
}