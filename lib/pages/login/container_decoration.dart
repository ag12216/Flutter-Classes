

import 'package:flutter/material.dart';
import 'package:society_hub/widgets/text_view.dart';

class ConainerDecoration extends StatelessWidget {
  const ConainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 150,left: 20,right: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.red,
              // image: DecorationImage(image: AssetImage(Assets.background),fit: BoxFit.cover),
              // border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 6), // changes position of shadow
                ),
              ]
            ),
            child: Center(child: TextView(title: "Hello Flutter")),
          ),
        ],
      ),
    );
  }
}