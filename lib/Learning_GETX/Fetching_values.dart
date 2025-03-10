
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_master/Learning_GETX/counter_controller.dart';

class FetchingValues extends StatelessWidget {
  const FetchingValues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController counter = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(builder: (_){
         return  Container(
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
              onTap: () {
                counter.decrement();

              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange
                ),
                child: Center(child: Text('Decrese X',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
