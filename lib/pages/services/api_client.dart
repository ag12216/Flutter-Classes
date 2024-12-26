import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:society/pages/services/urls.dart';



class ApiClient {

  Future<dynamic> post(String controller, Map<String, dynamic> params) async{
    String url = Urls.BASEURL + controller;
    String body = jsonEncode(params);
    print("URL: $url");
    print("Body: $body");
    var headers = {  'Content-Type': 'application/json' };
    http.Response response = await http.post(Uri.parse(url),body: body,headers: headers);
    var result = jsonDecode(response.body);

    try{
      if(response.statusCode >= 200 && response.statusCode <= 299){  
        return result;
      }else{
        throw (result as Map)['message'];
      }
    }catch(error){
      rethrow;
    }
    
    
  }

}