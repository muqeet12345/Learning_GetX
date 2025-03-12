import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ui_master/Getx_localization/Home_page.dart';
import 'package:ui_master/Home_Screen.dart';
import 'package:ui_master/Learning-RestAPI/user_view.dart';
import 'package:ui_master/learning_getx.dart';

import 'Getx_localization/Localization_controller.dart';

void main() {
  Get.put(LocalizationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX User API Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home:  HomePage(),
    );
  }
}

