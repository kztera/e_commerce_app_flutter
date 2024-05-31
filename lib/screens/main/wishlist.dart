import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/buttons/circle_icon.dart';
import 'package:zzz_book_store/widgets/shared/cards/product_card_vertical.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';

class WishlistScreen extends GetView<MainController> {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          t.screens.wishlist.appbar.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircleIcon(
            icon: Iconsax.add,
            onPressed: () => {controller.goToScreen(Screen.explore)},
            size: CustomSizes.iconMd,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                  itemCount: controller.wishlist.length,
                  itemBuilder: (_, index) => ProductCardVertical(
                        item: controller.wishlist[index],
                        author: controller.wishlist[index].productAuthorName,
                      )),
              const SizedBox(height: CustomSizes.defaultSpace),
            ],
          ),
        ),
      ),
    );
  }
}
