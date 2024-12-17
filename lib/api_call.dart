import 'dart:convert';

import 'package:http/http.dart' as http;

class APICall {

  Future<List<dynamic>> getToDoList() async{
    String url = 'https://jsonplaceholder.typicode.com/todos/';
    var response = await http.get(Uri.parse(url),headers: {
      'Content-Type': "application/json"
    });
    var result = jsonDecode(response.body);
    return result as List<dynamic>;
  }

}