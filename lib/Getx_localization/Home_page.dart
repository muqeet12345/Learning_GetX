import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_master/Getx_localization/Localization_controller.dart';

class HomePageScreen extends StatelessWidget {
  final LocalizationController localizationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title'.tr)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'description'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => localizationController.changeLanguage('en', 'US'),
                child: Text('English'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => localizationController.changeLanguage('ur', 'PK'),
                child: Text('اردو'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
