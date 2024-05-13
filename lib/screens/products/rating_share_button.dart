import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';

class RatingShareButton extends StatelessWidget {
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
                  TextSpan(text: '4.5', style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: ' ('),
                  TextSpan(text: '200 ', style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: t.screens.productDetails.ratings),
                  const TextSpan(text: ')'),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share_outlined, size: CustomSizes.iconMd),
        ),
      ],
    );
  }
}
