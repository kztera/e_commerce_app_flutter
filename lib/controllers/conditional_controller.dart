import 'dart:async';

import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';

class ConditionalController extends GetxController {
  static ConditionalController get instance => Get.find();
  final MainController _mainController = MainController.instance;

  var products = [].obs;
  var filteredProducts = [].obs;

  RxBool isLoading = true.obs;
  String conditionalId = '', title = '', type = '';

  //search
  RxString query = ''.obs;
  Timer? _debounce;

  Future<void> getProductConditional() async {
    isLoading.value = true;
    String endpoint = type == 'author' ? 'products/authors/$conditionalId' : 'products?category=$conditionalId';
    var response = await HttpClient.get(endpoint: endpoint, token: _mainController.user.accessToken) as List;

    products.assignAll(response.map((json) => Product.fromJson(json)));
    filteredProducts.assignAll(products);
  }

  void updateQuery(String newQuery) {
    query.value = newQuery;
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 200), () {
      onSearch();
    });
  }

  void onSearch() {
    final lowercaseQuery = query.value.toLowerCase();
    filteredProducts
        .assignAll(products.where((product) => product.name.toString().toLowerCase().contains(lowercaseQuery)));
  }

  @override
  void onInit() {
    conditionalId = Get.arguments["conditionalId"];
    title = Get.arguments["title"];
    type = Get.arguments['type'];
    getProductConditional().then((_) => isLoading.value = false);
    super.onInit();
  }
}
