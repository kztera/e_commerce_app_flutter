import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';
import 'package:zzz_book_store/utils/validators/validation.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  //manage the state of the signup form
  final formKeySignUp = GlobalKey<FormState>();

  String username = '';
  String fullName = '';
  String email = '';
  String phone = '';
  String password = '';
  String confirmPassword = '';

  var hidePassword = true.obs;
  var hideConfirmPassword = true.obs;

  // track password validation states
  RxBool isMinCharValid = false.obs;
  RxBool isAtLeastOneValid = false.obs;

  RxBool isCheckBox = false.obs;

  void setFullName(String value) => fullName = value;

  void setUsername(String value) => username = value;

  void setEmail(String value) => email = value;

  void setPhone(String value) => phone = value;

  void setPassword(String value) => password = value;

  void setConfirmPassword(String value) => confirmPassword = value;

  void visibilityPassword() => hidePassword.value = !hidePassword.value;

  void visibilityConfirmPassword() => hideConfirmPassword.value = !hideConfirmPassword.value;

  String? validateName(String? value) => TValidator.validateName(value);

  String? validateEmail(String? value) => TValidator.validateEmail(value);

  String? validatePhone(String? value) => TValidator.validatePhoneNumber(value);

  String? validatePassword(String? value) {
    String? error = TValidator.validatePassword(value);
    if (value != '') {
      isMinCharValid.value = !(error == t.screens.register.text.minChar);
      isAtLeastOneValid.value = isMinCharValid.value && !(error == t.screens.register.text.atLeastOne);
    }
    return error;
  }

  String? comparePassword(String? value) {
    if (password == confirmPassword) {
      return null;
    }
    return t.screens.register.form.passwordNotMatch;
  }

  void onChangeCheckBox(bool value) {
    isCheckBox.value = value;
  }

  void onSubmit() {
    final isValid = formKeySignUp.currentState!.validate();
    if (!isValid) {
      return;
    }
    requestSignUp();
  }

  Future<void> requestSignUp() async {
    var response = await HttpClient.post(
        endpoint: "register", data: {"name": fullName, "email": email, "phone": phone, "password": password});

    if (response['_id'] != null) {
      Get.toNamed("/login");
    } else {
      HelperFunc.showSnackBar(response["message"]);
    }
  }
}
