import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ui_master/Learning-RestAPI/Usermodel.dart';


class ApiService {
  static Future<Usermodel?> fetchUser() async {
    const url = "https://randomuser.me/api/";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return usermodelFromJson(response.body);
    } else {
      return null;
    }
  }
}
