import 'package:flutter/cupertino.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/author_showcase_card.dart';
import 'package:zzz_book_store/widgets/shared/cards/product_card_vertical.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              const AuthorShowcase(images: [Images.book1, Images.book2, Images.book3]),
              SectionHeading(
                title: t.screens.explore.categoryTab.title,
                showButtonAction: true,
                onPressed: () {},
                textColor: isDarkMode ? ThemeColors.white : ThemeColors.black,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical()),
              const SizedBox(height: CustomSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
