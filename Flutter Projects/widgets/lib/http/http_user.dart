import 'package:http/http.dart';

class HttpConnectUser {
  String baseurl = 'http://10.0.2.2:3000/api/v1/';

  // Sending data to the server
  void registerPost(user) async {
    Map<String, dynamic> userMap = {
      "fname": user.fname,
      "lname": user.lname,
      "username": user.username,
      "password": user.password,
    };
    try {
      final response =
          await post(Uri.parse(baseurl + "auth/register"), body: userMap);
      if (response.statusCode == 200) {
        print("Success");
      }
    } catch (e) {
      print(e);
    }
  }
}
