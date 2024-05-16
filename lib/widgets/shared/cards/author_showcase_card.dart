import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/author_card.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';

class AuthorShowcase extends StatelessWidget {
  const AuthorShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: ThemeColors.darkGrey,
      bgColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: CustomSizes.spaceBtwItems),
      padding: const EdgeInsets.all(CustomSizes.md),
      child: Column(
        children: [
          // Showcases author
          //AuthorCard(showBorder: false, onTap: () {}),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          // Books
          Row(children: images.map((image) => authorTopProductImageWidget(image, context)).toList()),
        ],
      ),
    );
  }

  Widget authorTopProductImageWidget(String image, context) {
    return Expanded(
      child: RoundedContainer(
        showBorder: true,
        height: 100,
        padding: const EdgeInsets.all(CustomSizes.xs),
        margin: const EdgeInsets.only(right: CustomSizes.sm),
        bgColor: HelperFunc.isDarkMode(context) ? ThemeColors.darkerGrey : ThemeColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
