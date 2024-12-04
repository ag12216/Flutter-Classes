
import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 50,top: 60),
            child: Column(children: [
              Text("Hello, Welcome to the flutter class !!"),
              SizedBox(height: 10),
              Text("This is day 2 for the class !!"),
              SizedBox(height: 20),
              Row(children: [
                Expanded(child: Text("Hello, Welcome to the flutter class !!")),
                SizedBox(width: 10),
                Expanded(child: Text("This is day 2 for the class !!")),
              ])
            ]),
          ),
        ),
      ),
    );
  }
}