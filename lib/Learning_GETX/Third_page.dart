import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_master/Learning_GETX/counter_controller.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Third'),
      ),
      body:Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(builder: (_){
              return Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange
                ),
                child: Center(child: Text(controller.y.toString(),
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),),),
              );
            }),
            GetBuilder<CounterController>(builder: (_){
              return Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange
                ),
                child: Center(child: Text(controller.x.toString(),
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),),),
              );
            }),

            GestureDetector(
              onTap: () {
               controller.incrementY();
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange
                ),
                child: Center(child: Text('Increase Y',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),),),
              ),
            )


          ],
        ),
      ) ,

    );
  }
}
