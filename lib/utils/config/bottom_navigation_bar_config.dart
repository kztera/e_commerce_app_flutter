import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:e_commerce_app_flutter_app/i18n/translations.g.dart';
import 'package:iconsax/iconsax.dart';

List<TabItem> bottomNavigationItems = [
  TabItem(icon: Iconsax.home, title: t.widgets.navigation.home, key: 'home'),
  TabItem(icon: Iconsax.discover, title: t.widgets.navigation.explore, key: 'explore'),
  TabItem(icon: Iconsax.heart, title: t.widgets.navigation.wishlist, key: 'wishlist'),
  TabItem(icon: Iconsax.shopping_cart, title: t.widgets.navigation.cart, key: 'cart'),
  TabItem(icon: Iconsax.user, title: t.widgets.navigation.profile, key: 'profile'),
];
