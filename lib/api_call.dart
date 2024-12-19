import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:society/learn.dart';
import 'package:society/model.dart';

class APICall {

    APICall(){
      Learn obj = Learn();
      print(obj.title);

    }

  Future<List<ToDoModel>> getToDoList() async{
    
    String url = 'https://jsonplaceholder.typicode.com/todos/';
    var response = await http.get(Uri.parse(url),headers: {
      'Content-Type': "application/json"
    });
    var result = jsonDecode(response.body) as List;
    // List<ToDoModel> toDoList = [];
    // for(var val in result){
    //   var data = ToDoModel.fromJson(val);
    //   toDoList.add(data);
    // }
    var data = result.map((e) => ToDoModel.fromJson(e)).toList();
    return data;
  }

}