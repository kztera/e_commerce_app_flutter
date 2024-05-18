import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/controllers/product_detail_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';

class RatingShareButton extends GetView<ProductDetailController> {
  const RatingShareButton({
    super.key,
  });

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
                      text: '4.5',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: ' ('),
                  TextSpan(
                      text: '200 ',
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
