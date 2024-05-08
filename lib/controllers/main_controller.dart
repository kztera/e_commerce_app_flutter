import 'package:zzz_book_store/screens/main/cart.dart';
import 'package:zzz_book_store/screens/main/explore.dart';
import 'package:zzz_book_store/screens/main/home.dart';
import 'package:zzz_book_store/screens/main/setting.dart';
import 'package:zzz_book_store/screens/main/wishlist.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';

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

  void goToScreen(Screen screen) {
    selectedIndex.value = screenIndexMap[screen]!;
  }

  void changeCarouselIndex(index) {
    carouselCurrentIndex.value = index;
  }

  void onAddToCart() {
    cartCount.value++;
  }

  void onRemoveFromCart() {
    cartCount.value--;
  }

  final categories = [
    {
      'id': 1,
      'name': 'Fantasy',
    },
    {
      'id': 2,
      'name': 'Science',
    },
    {
      'id': 3,
      'name': 'Fiction',
    },
    {
      'id': 4,
      'name': 'Adventure',
    },
    {
      'id': 5,
      'name': 'Mystery',
    },
    {
      'id': 6,
      'name': 'Horror',
    },
    {
      'id': 7,
      'name': 'Thriller',
    },
    {
      'id': 8,
      'name': 'Self-help',
    },
    {
      'id': 9,
      'name': 'Romance',
    },
    {
      'id': 10,
      'name': 'Light Novel',
    },
    {
      'id': 11,
      'name': 'Biography',
    },
  ];
}
