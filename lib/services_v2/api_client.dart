
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:society_hub/services_v2/urls.dart';

class ApiClient {

  Future<Map<String, dynamic>?> post(String? controller, Map<String, dynamic> params) async {
    try{
      // String url = Urls.bASEURL + (controller ?? '');
      String url = '${Urls.baseURL}$controller';
      String requestBody = jsonEncode(params);
      Map<String, String> headers = {
        'Content-Type': 'application/json'
      };
    print(url);
    print(params);
    
      http.Response response = await http.post(Uri.parse(url),body: requestBody,headers: headers);
      // print(response.body);
      var result = jsonDecode(response.body) as Map<String, dynamic>;
      if(response.statusCode >= 200 && response.statusCode <= 299){
        return result;
      }else{
        return null;
      }
      
    }catch(error){
      return null;
    }
  }

}