import 'package:get/get.dart';
import 'package:ui_master/Learning-RestAPI/Usermodel.dart';
import 'package:ui_master/Learning-RestAPI/api_service.dart';

class UserController extends GetxController {
  var user = Rx<Usermodel?>(null);
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }

  Future<void> fetchUser() async {
    isLoading.value = true;
    var fetchedUser = await ApiService.fetchUser();
    if (fetchedUser != null) {
      user.value = fetchedUser;
    }
    isLoading.value = false;
  }
}
