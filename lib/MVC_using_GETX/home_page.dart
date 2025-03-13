import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_master/MVC_using_GETX/home_controller.dart';


class HomePageMVC extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MVC using GetX')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reactive UI with Obx
            Obx(() => Text(
              "Name: ${homeController.user.value.name}",
              style: TextStyle(fontSize: 22),
            )),
            Obx(() => Text(
              "Age: ${homeController.user.value.age}",
              style: TextStyle(fontSize: 22),
            )),

            SizedBox(height: 20),

            // Button to update name
            ElevatedButton(
              onPressed: () {
                homeController.updateName("Alice");
              },
              child: Text("Change Name"),
            ),

            SizedBox(height: 10),

            // Button to increase age
            ElevatedButton(
              onPressed: () {
                homeController.increaseAge();
              },
              child: Text("Increase Age"),
            ),
          ],
        ),
      ),
    );
  }
}
