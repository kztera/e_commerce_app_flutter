import 'package:flutter/material.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/product_card_vertical.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';

class CategoryTab extends StatelessWidget {
  final List<Product> products;
  const CategoryTab({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              /* const AuthorShowcase(
                  images: [Images.book1, Images.book2, Images.book3]),
              const AuthorShowcase(
                  images: [Images.book1, Images.book2, Images.book3]),
              SectionHeading(
                title: t.screens.explore.categoryTab.title,
                showButtonAction: true,
                onPressed: () {},
                textColor: isDarkMode ? ThemeColors.white : ThemeColors.black,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems), */
              GridLayout(
                  itemCount: products.length,
                  itemBuilder: (_, index) =>
                      ProductCardVertical(item: products[index], author: products[index].author[0].name)),
              //const SizedBox(height: CustomSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
