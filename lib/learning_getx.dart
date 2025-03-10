import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_master/Learning_GETX/Fetching_values.dart';
import 'package:ui_master/Learning_GETX/Second_page.dart';
import 'package:ui_master/Learning_GETX/counter_controller.dart';

class FirstPage extends StatelessWidget {
   const FirstPage({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     CounterController counter = Get.put(CounterController());
     return Scaffold(
       appBar: AppBar(
         title: Text('Getx and Obx Example'),
       ),
       body: Container(
         width: double.maxFinite,
         height: double.maxFinite,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             GetBuilder<CounterController>(builder: (countercountroller){
               return Container(
                 margin: EdgeInsets.all(10),
                 width: double.maxFinite,
                 height: 100,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.orange
                 ),
                 child: Center(child: Text(counter.x.toString(),
                   style: TextStyle(
                       fontSize: 30,
                       color: Colors.white
                   ),),),
               );
             }),

             GestureDetector(
               onTap: (){
                 counter.increment();
               },

             child: Container(
              margin: EdgeInsets.all(10),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange
              ),
              child: Center(child: Text('data',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              ),),),
            ),
             ),
             GestureDetector(
               onTap: (){
                 Get.to(()=> FetchingValues());
               },

               child: Container(
                 margin: EdgeInsets.all(10),
                 width: double.maxFinite,
                 height: 100,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.orange
                 ),
                 child: Center(child: Text('Go to The Fetching Page',
                   style: TextStyle(
                       fontSize: 30,
                       color: Colors.white
                   ),),),
               ),
             ),
             GestureDetector(
               onTap: (){
                 Get.to(()=> SecondPage());
               },

               child: Container(
                 margin: EdgeInsets.all(10),
                 width: double.maxFinite,
                 height: 100,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.orange
                 ),
                 child: Center(child: Text('Go SecondPage',
                   style: TextStyle(
                       fontSize: 30,
                       color: Colors.white
                   ),),),
               ),
             ),
           ],

         )
       ),
     );
   }
 }
 