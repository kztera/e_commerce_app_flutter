import 'dart:async';

import 'package:zzz_book_store/model/cart.dart';
import 'package:zzz_book_store/model/category.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/model/user.dart';
import 'package:zzz_book_store/provider/data_provider.dart';
import 'package:zzz_book_store/screens/main/cart.dart';
import 'package:zzz_book_store/screens/main/explore.dart';
import 'package:zzz_book_store/screens/main/home.dart';
import 'package:zzz_book_store/screens/main/setting.dart';
import 'package:zzz_book_store/screens/main/wishlist.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
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
    List<Cart> data = await DataProvider.getData(
      dataType: DataType.cart,
      endpoint: "users/${user.id}/cart",
      token: user.accessToken,
    ) as List<Cart>;
    carts.assignAll(data);
  }

  Future<void> onAddToCart(String id) async {
    bool isExistItem = carts.any((cart) => cart.productId == id);
    if (isExistItem) {
      HelperFunc.showSnackBar("Đã có trong giỏ hàng");
      return;
    }
    var response = await DataProvider.postData(
        endpoint: "users/${user.id}/cart",
        data: {"productId": id},
        token: user.accessToken);
    Cart cart = Cart.fromJson(response);
    carts.add(cart);
  }

  Future<void> onRemoveToCart(int index) async {
    String productId =
        carts[index].productId;
    var response = await DataProvider.deleteData(
        endpoint: "users/${user.id}/cart/$productId", token: user.accessToken);
    if (response == null) {
      carts.removeWhere((cart) => cart.productId == productId);
    }
  }

  //product
  var products = <Product>[].obs;

  Future<void> getProducts() async {
    List<Product> data = await DataProvider.getData(
      dataType: DataType.product,
      endpoint: "products",
      token: user.accessToken,
    ) as List<Product>;

    products.assignAll(data);
  }

  //category
  var categories = <Category>[].obs;
  Future<void> getCategories() async {
    List<Category> data = await DataProvider.getData(
      dataType: DataType.category,
      endpoint: "categories",
      token: user.accessToken,
    ) as List<Category>;

    categories.assignAll(data);
  }

  //profile
  void signOut() {
    LocalStorage localStorage = LocalStorage();
    localStorage.clearAll();
    Get.offAllNamed('/login');
  }

  @override
  void onInit() {
    LocalStorage localStorage = LocalStorage();
    Map<String, dynamic> userData = localStorage.readData('user');
    user = User.fromJson(userData);
    getCategories();
    getProducts();
    getCarts();
    super.onInit();
  }
}
