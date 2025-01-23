
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:society_hub/services_v2/urls.dart';

class ResultResponse{
  int? status; // 0 - success, 1 - api error 2 - catch error
  dynamic data;
  ResultResponse({this.status, this.data});
}

class Services {

  // CRUD - HTTP Method
  // C (Create) -> POST 
      // a. RAW
      // b. Form Data

  // R (Read) -> GET
  // U (Update) -> PUT
  // D (Delete) -> DELETE

  // HHTP STATUS CODE
  // 200 .. 299 -> Success
  // 300 .. 399 -> Redirection
  // 400.. 499 -> Client Side error
  // 500 .. 599 -> Server error

  // { "status": true, "data": responseBody }
  // { "status": false, "data": responseBody }

  Future<ResultResponse> postMethod(String controller, Map<String, dynamic> params) async {
    try{
      String path = Urls.baseURL + controller;
      Map<String, String> headers = {
        'Content-Type': 'application/json'
      };
      String? body = jsonEncode(params);
      http.Response response =  await http.post(Uri.parse(path),headers: headers, body: body);
      var responseBody = jsonDecode(response.body);
      if(response.statusCode >= 200 && response.statusCode <= 299){
        return ResultResponse(status: 0, data: responseBody);
      }else{
        return ResultResponse(status: 1, data: responseBody);
      }
    }catch(error){
      return ResultResponse(status: 3, data: {'message': error});
    }
  }

  Future<ResultResponse> getMethod(String controller) async {
    try{
      String path = Urls.baseURL + controller;
      Map<String, String> headers = {
        'Content-Type': 'application/json'
      };
      http.Response response =  await http.get(Uri.parse(path),headers: headers);
      var responseBody = jsonDecode(response.body);
      if(response.statusCode >= 200 && response.statusCode <= 299){
        return ResultResponse(status: 0, data: responseBody);
      }else{
        return ResultResponse(status: 1, data: responseBody);
      }
    }catch(error){
      return ResultResponse(status: 3, data: {'message': error});
    }
  }

  Future<ResultResponse> putMethod(String controller, Map<String, dynamic> params) async {
    try{
      String path = Urls.baseURL + controller;
      Map<String, String> headers = {
        'Content-Type': 'application/json'
      };
      String? body = jsonEncode(params);
      http.Response response =  await http.put(Uri.parse(path),headers: headers, body: body);
      var responseBody = jsonDecode(response.body);
      if(response.statusCode >= 200 && response.statusCode <= 299){
        return ResultResponse(status: 0, data: responseBody);
      }else{
        return ResultResponse(status: 1, data: responseBody);
      }
    }catch(error){
      return ResultResponse(status: 3, data: {'message': error});
    }
  }


  Future<ResultResponse> deleteMethod(String controller, Map<String, dynamic> params) async {
    try{
      String path = Urls.baseURL + controller;
      Map<String, String> headers = {
        'Content-Type': 'application/json'
      };
      String? body = jsonEncode(params);
      http.Response response =  await http.delete(Uri.parse(path),headers: headers, body: body);
      var responseBody = jsonDecode(response.body);
      if(response.statusCode >= 200 && response.statusCode <= 299){
        return ResultResponse(status: 0, data: responseBody);
      }else{
        return ResultResponse(status: 1, data: responseBody);
      }
    }catch(error){
      return ResultResponse(status: 3, data: {'message': error});
    }
  }


}