import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXUIExample extends StatelessWidget {
  void showSnackbar() {
    Get.snackbar("Success", "Action completed!", backgroundColor: Colors.green, colorText: Colors.white);
  }

  void showBottomSheet() {
    Get.bottomSheet(
      Container(
        height: 200,
        color: Colors.white,
        child: Center(
          child: Text("This is a Bottom Sheet", style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }

  void showDialogBox() {
    Get.defaultDialog(
      title: "Alert",
      middleText: "Are you sure?",
      actions: [
        TextButton(onPressed: () => Get.back(), child: Text("Cancel")),
        ElevatedButton(onPressed: () => Get.back(), child: Text("OK")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX UI Elements")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: showSnackbar, child: Text("Show Snackbar")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: showBottomSheet, child: Text("Show Bottom Sheet")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: showDialogBox, child: Text("Show Dialog")),
          ],
        ),
      ),
    );
  }
}
