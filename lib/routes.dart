
import 'package:flutter/material.dart';
import 'package:society/form.dart';
import 'package:society/todolist.dart';

class Routes {

  static const toDoList = '/todoList';
  static const formData = '/formData';
  
  static Route<dynamic> onGenerateRoute(RouteSettings settings){

    switch(settings.name){
      case toDoList:
        return MaterialPageRoute(builder: (_) => ToDoList(list: (settings.arguments as Map)['data']));
      case formData:
        return MaterialPageRoute(builder: (_) => const ToDoForm());
      default:
        return MaterialPageRoute(builder: (_) => ToDoList(list: (settings.arguments as Map)['data'])); 
    }
  }
}