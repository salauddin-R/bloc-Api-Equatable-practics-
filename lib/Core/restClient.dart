import 'dart:convert';
import '../Data/UserModels.dart';
import 'package:http/http.dart' as http;

Future<List<UserModel>> userDataRequest()async{
  try{
    var url=Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response=await http.get(url);
    if(response.statusCode==200){
      final List jsonBody=json.decode(response.body);
      return jsonBody.map((item)=> UserModel.fromJson(item)).toList();
    }
    else{
      return [];
    }
  }
  catch(e)
  {
    throw Exception("The error is $e");
  }
}