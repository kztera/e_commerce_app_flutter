import 'dart:async';
import 'dart:developer';

import 'package:zzz_book_store/model/author.dart';
import 'package:zzz_book_store/model/cart.dart';
import 'package:zzz_book_store/model/category.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/model/user.dart';
import 'package:zzz_book_store/model/wishlist.dart';
import 'package:zzz_book_store/screens/main/cart.dart';
import 'package:zzz_book_store/screens/main/explore.dart';
import 'package:zzz_book_store/screens/main/home.dart';
import 'package:zzz_book_store/screens/main/setting.dart';
import 'package:zzz_book_store/screens/main/wishlist.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';
import 'package:zzz_book_store/utils/local_storage/local_storage.dart';

class MainController extends GetxController {
  static MainController get instance => Get.find();

  final RxInt selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const WishlistScreen(),
    const CartScreen(),
    SettingScreen()
  ];

  final RxInt carouselCurrentIndex = 0.obs;

  final Map<Screen, int> screenIndexMap = {
    Screen.home: 0,
    Screen.explore: 1,
    Screen.wishlist: 2,
    Screen.cart: 3,
    Screen.setting: 4,
  };
  late User user;

  void goToScreen(Screen screen) {
    selectedIndex.value = screenIndexMap[screen]!;
  }

  void changeCarouselIndex(index) {
    carouselCurrentIndex.value = index;
  }

  //carts
  var carts = <Cart>[].obs;
  int countDelete = 0;

  Future<void> getCarts() async {
    var response = await HttpClient.get(
      endpoint: "users/${user.id}/cart",
      token: user.accessToken,
    ) as List;
    carts.assignAll(response.map((json) => Cart.fromJson(json)).toList());
  }

  Future<void> onAddToCart(String id) async {
    bool isExistItem = carts.any((cart) => cart.id == id);
    if (isExistItem) {
      HelperFunc.showSnackBar("Đã có trong giỏ hàng");
      return;
    }
    var response = await HttpClient.post(
        endpoint: "users/${user.id}/cart",
        data: {"productId": id},
        token: user.accessToken);
    Cart cart = Cart.fromJson(response);
    carts.add(cart);
  }

  Future<void> onRemoveToCart(int index) async {
    String productId = carts[index].id;

    try {
      await HttpClient.delete(
          endpoint: "users/${user.id}/cart/$productId",
          token: user.accessToken);
    } catch (e) {
      log('Error: $e');
      return;
    } finally {
      carts.removeWhere((cart) => cart.id == productId);
    }
  }

  //product
  var products = <Product>[].obs;

  Future<void> getProducts() async {
    var response = await HttpClient.get(
      endpoint: "products",
      token: user.accessToken,
    ) as List;

    products.assignAll(response.map((json) => Product.fromJson(json)).toList());
  }

  //category
  var categories = <Category>[].obs;
  Future<void> getCategories() async {
    var response = await HttpClient.get(
      endpoint: "categories",
      token: user.accessToken,
    ) as List;
    categories
        .assignAll(response.map((json) => Category.fromJson(json)).toList());
  }

  //explore
  RxInt categorySelected = 0.obs;
  var authors = <Author>[].obs;

  void updateCategorySelected(int index) {
    categorySelected.value = index;
  }

  Future<void> getAuthors() async {
    var response = await HttpClient.get(
      endpoint: "authors",
      token: user.accessToken,
    ) as List;

    authors.assignAll(response.map((json) => Author.fromJson(json)));
  }

  //wishlist
  var wishlist = <Wishlist>[].obs;
  Future<void> getWishlist() async {
    var response = await HttpClient.get(
      endpoint: "users/${user.id}/wishlist",
      token: user.accessToken,
    ) as List;

    wishlist.assignAll(response.map((json) => Wishlist.fromJson(json)));
  }

  //profile
  void signOut() {
    LocalStorage localStorage = LocalStorage();
    localStorage.clearAll();
    Get.offAllNamed('/login');
  }

  @override
  Future<void> refresh() async {
    getCategories();
    getProducts();
    getCarts();
    super.refresh();
  }

  @override
  void onInit() {
    LocalStorage localStorage = LocalStorage();
    Map<String, dynamic> userData = localStorage.readData('user');
    user = User.fromJson(userData);
    getCategories();
    getProducts();
    getWishlist();
    getCarts();
    getAuthors();
    super.onInit();
  }
}
