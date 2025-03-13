import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static Future<void> saveUser(String username, int age) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setInt('age', age);
  }

  static Future<Map<String, dynamic>> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString('username');
    int? age = prefs.getInt('age');

    return {
      "username": username ?? "Guest",
      "age": age ?? 0,
    };
  }

  static Future<void> setLoginStatus(bool isLoggedIn) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', isLoggedIn);
  }

  static Future<bool> getLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  static Future<void> clearData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // Clears all stored data
  }
}
