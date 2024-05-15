import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';
import 'package:zzz_book_store/utils/validators/validation.dart';

class ForgotController extends GetxController {
  static ForgotController get instance => Get.find();

  final formKeyForgot = GlobalKey<FormState>();
  String email = '';
  RxString otp = ''.obs;

  final List<TextEditingController> textControllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  void setEmail(String value) => email = value;

  String? validateEmail(String? value) => TValidator.validateEmail(value);

  void onSubmit() {
    final isValid = formKeyForgot.currentState!.validate();
    if (!isValid) {
      return;
    }
    requestForgot();
  }

  Future<void> requestForgot() async {
    var response = await HttpClient.post('forgot-password', {"email": email});
    if (response["message"] != 'Password reset OTP sent to your email') {
      HelperFunc.showSnackBar(response["message"]);
    } else {
      Get.toNamed("/verify-otp");
    }
  }

  void onChanged(int index, String value) {
    if (value.length == 1) {
      if (index < 3) {
        focusNodes[index + 1].requestFocus();
      } else {
        focusNodes[index].unfocus();
        updateOTP();
        verifyOTP();
      }
    }
  }

  void updateOTP() {
    otp.value =
        textControllers.map((textController) => textController.text).join();
  }

  Future<void> verifyOTP() async {
    if (otp.value.length < 4) {
      return;
    }
    var response = await HttpClient.post('verify-otp', {
      "email": email,
      "otp": otp.value,
    });

    String message = response["message"];

    HelperFunc.showSnackBar(message);
  }

  @override
  void onClose() {
    for (var controller in textControllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.onClose();
  }
}
