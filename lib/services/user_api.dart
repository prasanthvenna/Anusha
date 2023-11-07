import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user.dart';

class UserApi{
  static Future<User>fetchUsers() async {
    const url = 'https://randomuser.me/api/?results=100'; //Uniform Resource Locator
    final uri = Uri.parse(url); // Uniform Resource Identifier
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    var userData = User.fromJson(json);

   
   
    return userData;
  } 
}