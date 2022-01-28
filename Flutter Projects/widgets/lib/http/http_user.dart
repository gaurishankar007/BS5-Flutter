import 'dart:convert';

import 'package:column_example/model/user.dart';
import 'package:column_example/response/user_response.dart';
import 'package:http/http.dart';

class HttpConnectUser {
  String baseurl = 'http://10.0.2.2:3000/api/v1/';
  static String token = '';

  // Sending data to the server
  Future<bool> registerPost(User user) async {
    Map<String, dynamic> userMap = {
      "fname": user.firstname,
      "lname": user.lastname,
      "username": user.username,
      "password": user.password,
    };
    final response =
        await post(Uri.parse(baseurl + "auth/register"), body: userMap);
    if (response.statusCode == 200) {
      var usrRes = ResponseUser.fromJson(jsonDecode(response.body));
      return usrRes.success!;
    } else {
      return false;
    }
  }

  Future<bool> loginPosts(String username, String password) async {
    Map<String, dynamic> loginStudent = {
      "username": username,
      "password": password,
    };

    try {
      final response =
          await post(Uri.parse(baseurl + "auth/login"), body: loginStudent);

      //json serializing inline
      final jsonData = jsonDecode(response.body) as Map;
      token = jsonData['token'];
      if (token.isNotEmpty) {
        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}
