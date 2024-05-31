import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/model/order.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';

class OrderController extends GetxController {
  static OrderController get instance => Get.find();
  final MainController _mainController = MainController.instance;

  int selected = 0;
  RxBool isLoading = true.obs;
  var orders = <Order>[].obs;

  void setSelected(int index) => selected = index;

  Future<void> getOrders() async {
    isLoading.value = true;
    var response = await HttpClient.get(
        endpoint: "orders/users/${_mainController.user.id}", token: _mainController.user.accessToken) as List;
    orders.assignAll(response.map((json) => Order.fromJson(json)));
    isLoading.value = false;
  }

  @override
  void onInit() {
    getOrders();
    super.onInit();
  }
}
