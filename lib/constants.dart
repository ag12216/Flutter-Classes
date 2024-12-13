import 'package:flutter/material.dart';

String toDoKey = "todo_list";


AppBar NavBar(String title,BuildContext context, {bool isBackButton = false}){
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
            const Icon(Icons.menu),
            SizedBox(width: 10),
            Expanded(child: Text(title)),
            const Icon(Icons.close)
          ],
    )) ;
}