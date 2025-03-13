import 'package:get/get.dart';
import 'package:ui_master/MVC_using_GETX/user_model.dart';


class HomeController extends GetxController {
  // Observable variable
  var user = UserModel(name: "John Doe", age: 25).obs;

  // Function to update name
  void updateName(String newName) {
    user.update((val) {
      val!.name = newName;
    });
  }

  // Function to increase age
  void increaseAge() {
    user.update((val) {
      val!.age++;
    });
  }
}
