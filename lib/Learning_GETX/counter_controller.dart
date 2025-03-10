
import 'package:get/get.dart';

class CounterController extends GetxController{
  int _x=0;
  int get x=>_x;
  RxInt _y=0.obs;
  RxInt get y=>_y;


void increment(){
  _x++;
  update();
  print(_x);
}

  void decrement(){
    _x--;
    print(_x);
    update();

  }

  void incrementY(){
    _y++;
    update();
  }
}