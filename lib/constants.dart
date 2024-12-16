import 'package:flutter/material.dart';

String toDoKey = "todo_list";

class NavBar2 extends StatelessWidget {
  String title;
  bool? isBackButton;
  NavBar2({super.key,required this.title, this.isBackButton});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: const SizedBox.shrink(),
        leadingWidth: 0,
        centerTitle: false,
        title: Row(
          children: [
            isBackButton == true ?
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(Icons.arrow_back)) : 
            GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Icon(Icons.menu)),
            SizedBox(width: 10),
            Expanded(child: Text(title)),
            const Icon(Icons.close)
          ],
    )) ;
  }
}


AppBar NavBar(String title,BuildContext context, {GlobalKey<State<StatefulWidget>>? scafoldKey,bool isBackButton = false}){
  return AppBar(
        leading: const SizedBox.shrink(),
        leadingWidth: 0,
        centerTitle: false,
        title: Row(
          children: [
            isBackButton ?
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(Icons.arrow_back)) : 
            GestureDetector(
              onTap: () => Scaffold.of(scafoldKey!.currentContext!).openDrawer(),
              child: const Icon(Icons.menu)),
            SizedBox(width: 10),
            Expanded(child: Text(title)),
            const Icon(Icons.close)
          ],
    )) ;
}


Widget BottomTitle(String title){
  return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(0.8, 0.3),
            spreadRadius: 0.5
          )
        ]
      ),
      child: Text(title,textAlign: TextAlign.center));
}