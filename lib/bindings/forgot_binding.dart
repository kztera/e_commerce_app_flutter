import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/forgot_controller.dart';

class ForgotBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotController>(() => ForgotController());
  }
}
