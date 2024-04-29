import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/styles/shadows.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/images/rounded_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_price_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_title_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);
    final controller = Get.put(MainController());

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductCard],
          borderRadius: BorderRadius.circular(CustomSizes.productImageRadius),
          color: isDarkMode ? ThemeColors.darkerGrey : ThemeColors.white,
        ),
        child: Column(
          children: [
            RoundedContainer(
              padding: const EdgeInsets.all(CustomSizes.sm),
              bgColor: isDarkMode ? ThemeColors.dark : ThemeColors.light,
              child: Stack(
                children: [
                  const RoundedImage(
                    imageUrl: Images.book1,
                    isNetworkImage: false,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 0,
                    child: RoundedContainer(
                      radius: CustomSizes.sm,
                      bgColor: ThemeColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: CustomSizes.sm, vertical: CustomSizes.xs),
                      child: Text(
                        "15%",
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
                  const ProductTitleText(title: "Tam thể 1 2"),
                  const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Lưu Từ Hân",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: CustomSizes.xs),
                      const Icon(Iconsax.verify5, size: CustomSizes.iconXs, color: ThemeColors.primary)
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: CustomSizes.sm),
                  child: ProductPriceText(
                    price: '112.000',
                    isLarge: true,
                    lineThrough: true,
                  ),
                ),
                GestureDetector(
                  onTap: () => {
                    controller.onAddToCart(),
                  },
                  onDoubleTap: () => {
                    controller.onRemoveFromCart(),
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: ThemeColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(CustomSizes.cardRadiusMd),
                        bottomRight: Radius.circular(CustomSizes.productImageRadius),
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
