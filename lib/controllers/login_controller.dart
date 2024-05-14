import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/model/user.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';
import 'package:zzz_book_store/utils/local_storage/local_storage.dart';
import 'package:zzz_book_store/utils/validators/validation.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  //manage the state of the signin form
  final formKeySignIn = GlobalKey<FormState>();

  String email = '';
  String password = '';

  var hidePassword = true.obs;

  void setEmail(String value) => email = value;

  void setPassword(String value) => password = value;

  void visibilityPassword() => hidePassword.value = !hidePassword.value;

  String? validateEmail(String? value) => TValidator.validateEmail(value);

  void onSubmit() {
    final isValid = formKeySignIn.currentState!.validate();
    if (!isValid) {
      return;
    }
    requestSignIn();
  }

  Future<void> requestSignIn() async {
    var response =
        await HttpClient.post('login', {"email": email, "password": password});

    if (response['_id'] != null) {
      saveInfo(response);
      Get.toNamed("/main");
    } else {
      HelperFunc.showSnackBar(response["message"]);
    }
  }

  void saveInfo(Map<String, dynamic> user) {
      LocalStorage storage = LocalStorage();
      storage.saveData('user', user);
    
  }
}
