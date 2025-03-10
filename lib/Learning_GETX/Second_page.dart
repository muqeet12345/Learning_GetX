 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_master/Learning_GETX/Third_page.dart';
import 'package:ui_master/Learning_GETX/counter_controller.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController controller = Get.find();
    return Scaffold(
    appBar: AppBar(
    title: Text('Welcome second'),
    ),
     body:Container(
width: double.maxFinite,
height: double.maxFinite,
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
   children: [
     GestureDetector(
       onTap: (){
         Get.to(()=>ThirdPage());

       },

     child: Container(
 margin: EdgeInsets.all(10),
       width: double.maxFinite,
       height: 100,
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           color: Colors.orange
       ),
       child: Center(child: Text('Tap',
         style: TextStyle(
             fontSize: 30,
             color: Colors.white
         ),),),
     ),
     ),

   ],
 ),
 ) ,

    );
  }
}
