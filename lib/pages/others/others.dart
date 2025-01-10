
import 'package:flutter/material.dart';
import 'package:society_hub/pages/others/other_card.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Wrap(
              // crossAxisAlignment: WrapCrossAlignment.start,
              // runAlignment: WrapAlignment.start,
              // alignment: WrapAlignment.start,
              direction: Axis.vertical,
              children: [1,2,3,5,1,2,3,51,2,3,51,2,3,51,2,3,51,2,3,51,2,3,51,2,3,5].map((a) => OtherCard()).toList()),
          ),
        ),
      ),
    );
  }
}

// GridView.builder(
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 3,
//       childAspectRatio: 0.9,
//       crossAxisSpacing: 4,
//       mainAxisSpacing: 2
//       ), 
//     shrinkWrap: true,
//     itemCount: 10,
//     itemBuilder: (context, index){
//       return GridCard();
//     })

// Scaffold(
//       body: SafeArea(
//         child: ListView.builder(
//           shrinkWrap: true,
//           itemCount: 10,
//           itemBuilder: (context, index){
//             return OtherCard(value: index);
//           }),
//       ),
//     )