import 'package:zzz_book_store/screens/main/cart.dart';
import 'package:zzz_book_store/screens/main/explore.dart';
import 'package:zzz_book_store/screens/main/home.dart';
import 'package:zzz_book_store/screens/main/profile.dart';
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
    const ProfileScreen()
  ];

  final RxInt cartCount = 0.obs;

  final RxInt carouselCurrentIndex = 0.obs;

  final Map<Screen, int> screenIndexMap = {
    Screen.home: 0,
    Screen.explore: 1,
    Screen.wishlist: 2,
    Screen.cart: 3,
    Screen.profile: 4,
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
      'name': 'Electronics',
    },
    {
      'id': 2,
      'name': 'Fashion',
    },
    {
      'id': 3,
      'name': 'Sports',
    },
    {
      'id': 4,
      'name': 'Toys',
    },
    {
      'id': 5,
      'name': 'Health & Beauty',
    },
    {
      'id': 6,
      'name': 'Books',
    },
    {
      'id': 7,
      'name': 'Kids',
    },
    {
      'id': 8,
      'name': 'Furniture',
    },
    {
      'id': 9,
      'name': 'Shoes',
    },
    {
      'id': 10,
      'name': 'Jewelry',
    },
    {
      'id': 11,
      'name': 'Watches',
    },
  ];
}
