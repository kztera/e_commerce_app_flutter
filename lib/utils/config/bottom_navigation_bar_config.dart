import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/widgets/cart/cart_count.dart';
import 'package:iconsax/iconsax.dart';

List<TabItem> bottomNavigationItems = [
  TabItem(icon: Iconsax.home, title: t.navigation.home, key: 'home'),
  TabItem(icon: Iconsax.discover, title: t.navigation.explore, key: 'explore'),
  TabItem(icon: Iconsax.heart, title: t.navigation.wishlist, key: 'wishlist'),
  TabItem(
    icon: Iconsax.shopping_cart,
    title: t.navigation.cart,
    key: 'cart',
    count: const CartCount(),
  ),
  TabItem(icon: Iconsax.user, title: t.navigation.profile, key: 'profile'),
];
