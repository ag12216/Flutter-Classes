
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:society/constants.dart';
import 'package:society/routes.dart';

class ToDoList extends StatefulWidget {
  List<String> list;
  ToDoList({super.key,required this.list});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<Map<String, String>> toDoListData = [];

  @override
  void initState(){
    getData();
    super.initState();
  }

  void getData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var result = preferences.getString(toDoKey);
    if(result != null){
        var resultParams = jsonDecode(result) as List; // Explict Type Casting
        Map<String, String> params2 = {};
        for(int i=0;i<resultParams.length;i++){
         params2['title'] = resultParams[i]['title'];
         toDoListData.add(params2);
        }
    }
    // print(toDoListData);
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar('Todo List',context),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.list.length,
        itemBuilder: (cxt,index){
          return GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(Routes.formData),
            child: SizedBox(
              child: Container(
                margin: const EdgeInsets.only(bottom: 3,left: 10,right: 10,top: 10),
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.5),borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: Text(widget.list[index] ?? '',style: TextStyle(fontSize: 18,color: Colors.red),)),
            ),
          );
        }),
    );
  }
}

