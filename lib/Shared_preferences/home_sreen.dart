import 'package:flutter/material.dart';
import 'storage_service.dart';



class ExampleScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ExampleScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  String username = "Guest";
  int age = 0;
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    var userData = await StorageService.getUser();
    bool loginStatus = await StorageService.getLoginStatus();
    setState(() {
      username = userData["username"];
      age = userData["age"];
      isLoggedIn = loginStatus;
    });
  }

  void saveData() async {
    await StorageService.saveUser(usernameController.text, int.parse(ageController.text));
    await StorageService.setLoginStatus(true);
    loadUserData();
  }

  void logout() async {
    await StorageService.clearData();
    loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Shared Preferences Example")),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Username: $username", style: TextStyle(fontSize: 18)),
              Text("Age: $age", style: TextStyle(fontSize: 18)),
              Text("Logged In: ${isLoggedIn ? 'Yes' : 'No'}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              SizedBox(height: 20),
              TextField(controller: usernameController, decoration: InputDecoration(labelText: "Enter Username")),
              TextField(controller: ageController, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: "Enter Age")),

              SizedBox(height: 20),
              ElevatedButton(onPressed: saveData, child: Text("Save Data")),
              ElevatedButton(onPressed: logout, child: Text("Clear Data"), style: ElevatedButton.styleFrom(backgroundColor: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
