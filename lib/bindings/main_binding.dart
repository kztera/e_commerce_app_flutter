import 'package:zzz_book_store/controllers/cart_controller.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<CartController>(() => CartController());
  }
}
