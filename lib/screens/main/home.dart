import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/main/home/category_list_view.dart';
import 'package:zzz_book_store/widgets/main/home/header_home.dart';
import 'package:zzz_book_store/widgets/main/home/home_appbar.dart';
import 'package:zzz_book_store/widgets/main/home/image_slider.dart';
import 'package:zzz_book_store/widgets/shared/cards/product_card_vertical.dart';
import 'package:zzz_book_store/widgets/shared/inputs/search_box.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class HomeScreen extends GetView<MainController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          HeaderHome(
            child: Column(
              children: [
                const HomeAppbar(),
                const SizedBox(height: CustomSizes.spaceBtwItems),
                SearchBox(
                  text: t.screens.home.search,
                ),
                const SizedBox(height: CustomSizes.defaultSpace),
                SectionHeading(
                  title: t.screens.home.category,
                  showButtonAction: false,
                  textColor: ThemeColors.white,
                ),
                const SizedBox(height: CustomSizes.spaceBtwItems),
                const CategoryListView(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace, vertical: CustomSizes.xs),
            child: Column(
              children: [
                const ImageSlider(),
                const SizedBox(height: CustomSizes.spaceBtwSections),
                GridLayout(
                  itemCount: 2,
                  itemBuilder: (_, index) => const ProductCardVertical(),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
