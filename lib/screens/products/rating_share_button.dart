import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/controllers/product_detail_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';

class RatingShareButton extends GetView<ProductDetailController> {
  final double rating;
  final int numOfReviews;

  const RatingShareButton(
      {super.key, required this.rating, required this.numOfReviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: CustomSizes.iconMd,
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "$rating",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: ' ('),
                  TextSpan(
                      text: '$numOfReviews ',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: t.screens.productDetails.ratings),
                  const TextSpan(text: ')'),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.share_outlined, size: CustomSizes.iconMd)),
            Obx(() => IconButton(
                onPressed: controller.toggleWishlistAction,
                icon: controller.isExistWishList.isTrue
                    ? const Icon(Iconsax.heart5, color: Colors.red)
                    : const Icon(Iconsax.heart)))
          ],
        )
      ],
    );
  }
}
