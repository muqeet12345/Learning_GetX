
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_master/Learning-RestAPI/user_controller.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(title: const Text("Random User Info with GetX")),
      body: Obx(() {
        if (userController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (userController.user.value == null) {
          return const Center(child: Text("Failed to load user data"));
        }

        final user = userController.user.value!.results.first;

        return Center(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(user.picture.large),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "${user.name.title} ${user.name.first} ${user.name.last}",
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(user.email, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 10),
                  Text("Location: ${user.location.city}, ${user.location.state}, ${user.location.country}"),
                  const SizedBox(height: 10),
                  Text("Phone: ${user.phone}"),
                ],
              ),
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userController.fetchUser();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}