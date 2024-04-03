import 'package:get/get.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  RxBool isMinCharValid = false.obs;
  RxBool isAtLeastOneValid = false.obs;

  void onChangePassword(value) {
    isMinCharValid.value = value.length >= 8;
    isAtLeastOneValid.value = value.contains(RegExp(r'[a-zA-Z]')) && value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  }
}
