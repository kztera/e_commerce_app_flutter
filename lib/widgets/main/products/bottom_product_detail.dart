import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/controllers/product_detail_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';

class BottomProductDetail extends GetView<ProductDetailController> {
  const BottomProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace, vertical: CustomSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: isDarkMode ? ThemeColors.darkerGrey : ThemeColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(CustomSizes.cardRadiusLg),
            topRight: Radius.circular(CustomSizes.cardRadiusLg),
          )),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => {controller.mainController.goToScreen(Screen.cart), Get.offAndToNamed('/main')},
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: -15, end: -15),
                showBadge: true,
                ignorePointer: false,
                onTap: () {},
                badgeContent: Text(
                  controller.mainController.carts.length > 99
                      ? "99+"
                      : controller.mainController.carts.length.toString(),
                ),
                badgeAnimation: const badges.BadgeAnimation.slide(),
                badgeStyle: badges.BadgeStyle(
                  badgeColor: ThemeColors.warning,
                  borderRadius: BorderRadius.circular(100),
                  elevation: 0,
                ),
                child: const Icon(
                  Iconsax.shopping_cart,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.addToCart();
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(CustomSizes.md),
                backgroundColor: ThemeColors.primary,
                side: const BorderSide(color: ThemeColors.primary, width: 1),
              ),
              child: Text(t.screens.productDetails.addToCart),
            )
          ],
        ),
      ),
    );
  }
}
