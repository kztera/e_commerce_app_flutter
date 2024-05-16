import 'package:zzz_book_store/model/category.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/model/user.dart';
import 'package:zzz_book_store/screens/main/cart.dart';
import 'package:zzz_book_store/screens/main/explore.dart';
import 'package:zzz_book_store/screens/main/home.dart';
import 'package:zzz_book_store/screens/main/setting.dart';
import 'package:zzz_book_store/screens/main/wishlist.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
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

  final RxInt cartCount = 0.obs;

  final RxInt carouselCurrentIndex = 0.obs;

  final Map<Screen, int> screenIndexMap = {
    Screen.home: 0,
    Screen.explore: 1,
    Screen.wishlist: 2,
    Screen.cart: 3,
    Screen.setting: 4,
  };

  //home
  late User user;
  var products = <Product>[].obs;
  var categories = <Category>[].obs;

  void goToScreen(Screen screen) {
    selectedIndex.value = screenIndexMap[screen]!;
  }

  //home
  void changeCarouselIndex(index) {
    carouselCurrentIndex.value = index;
  }

  void onAddToCart() {
    cartCount.value++;
  }

  void onRemoveFromCart() {
    cartCount.value--;
  }

  Future<void> getCategories() async {
    var response =
        await HttpClient.get(endpoint: "categories", token: user.accessToken);
    List<Category> list = [];

    if (response is List) {
      list = response.map((jsonItem) => Category.fromJson(jsonItem)).toList();
    }
    categories.assignAll(list);
  }

  Future<void> getProducts() async {
    var response =
        await HttpClient.get(endpoint: "products", token: user.accessToken);
    List<Product> list = [];

    if (response is List) {
      list = response.map((jsonItem) => Product.fromJson(jsonItem)).toList();
    }
    products.assignAll(list);
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
    super.onInit();
  }
}
