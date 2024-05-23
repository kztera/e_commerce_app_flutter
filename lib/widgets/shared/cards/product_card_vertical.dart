import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/model/item.dart';
import 'package:zzz_book_store/screens/products/product_detail.dart';
import 'package:zzz_book_store/styles/shadows.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/images/rounded_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_with_verify_icon.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_price_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_title_text.dart';

class ProductCardVertical<T extends Item> extends GetView<MainController> {
  final T item;
  final String? author;
  const ProductCardVertical({super.key, required this.item, this.author});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen(),
          arguments: {"productId": item.id}),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(
            color: isDarkMode ? ThemeColors.darkGrey : ThemeColors.grey,
          ),
          boxShadow: [ShadowStyle.verticalProductCard],
          borderRadius: BorderRadius.circular(CustomSizes.productImageRadius),
          color: isDarkMode ? ThemeColors.darkerGrey : ThemeColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedContainer(
              padding: const EdgeInsets.all(CustomSizes.sm),
              bgColor: isDarkMode ? ThemeColors.dark : ThemeColors.light,
              child: Stack(
                children: [
                  RoundedImage(
                    imageUrl: item.image,
                    isNetworkImage: true,
                    applyImageRadius: true,
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.contain
                  ),
                  Positioned(
                    top: 0,
                    child: RoundedContainer(
                      radius: CustomSizes.sm,
                      bgColor: ThemeColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: CustomSizes.sm, vertical: CustomSizes.xs),
                      child: Text(
                        "${item.saleOff}%",
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: ThemeColors.black,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: CustomSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: item.name),
                  const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                  AuthorTitleWithVerifyIcon(title: author ?? '')
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: CustomSizes.sm),
                  child: ProductPriceText(
                    saleOff: item.saleOff,
                    price: item.price,
                    isLarge: true,
                    lineThrough: true,
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.onAddToCart(item.id),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: ThemeColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(CustomSizes.cardRadiusMd),
                        bottomRight:
                            Radius.circular(CustomSizes.productImageRadius),
                      ),
                    ),
                    child: const SizedBox(
                      width: CustomSizes.iconLg * 1.2,
                      height: CustomSizes.iconLg * 1.2,
                      child: Icon(
                        Iconsax.add,
                        color: ThemeColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
