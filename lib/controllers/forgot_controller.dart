import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';
import 'package:zzz_book_store/utils/validators/validation.dart';

class ForgotController extends GetxController {
  static ForgotController get instance => Get.find();

  final formKeyForgot = GlobalKey<FormState>();
  final formKeyReset = GlobalKey<FormState>();
  String email = '';
  String password = '';
  RxString otp = ''.obs;
  RxInt countdown = 0.obs;

  var hidePassword = true.obs;

  void setPassword(String value) => password = value;

  void visibilityPassword() => hidePassword.value = !hidePassword.value;

  String? validatePassword(String? value) => TValidator.validatePassword(value);

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
    var response = await HttpClient.post(
        endpoint: 'forgot-password', data: {"email": email});
    if (response["message"] != 'Password reset OTP sent to your email') {
      HelperFunc.showSnackBar(response["message"]);
    } else {
      startCountdown();
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
    var response = await HttpClient.post(endpoint: 'verify-otp', data: {
      "email": email,
      "otp": otp.value,
    });

    String message = response["message"];
    if (message == "OTP confirmed successfully.") {
      HelperFunc.showSnackBar(message);
      Get.offAndToNamed('/reset-password');
    }
  }

  void onResendOTP() {
    if (countdown.value == 0) {
      requestForgot();
      startCountdown();
    }
  }

  void startCountdown() {
    countdown.value = 30;
    countdownTimer();
  }

  void countdownTimer() async {
    for (var i = countdown.value; i >= 0; i--) {
      await Future.delayed(const Duration(seconds: 1));
      countdown.value = i;
    }
  }

  Future<void> onResetPassword() async {
    final isValid = formKeyReset.currentState!.validate();
    if(!isValid){
      return;
    }
    var response = await HttpClient.post(
        endpoint: 'reset-password',
        data: {"email": email, "newPassword": password});

    if (response['message'] == 'Password reset successfully') {
      Get.offAllNamed('/login');
    } else {
      HelperFunc.showSnackBar(response['message']);
    }
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
