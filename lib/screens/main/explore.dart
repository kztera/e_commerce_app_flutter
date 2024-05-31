import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/explore_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/screens/products/product_conditional.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/main/explore/category_tab.dart';
import 'package:zzz_book_store/widgets/shared/cards/author_card.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_tabbar.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ExploreController controller = Get.put(ExploreController());
    final bool isDarkMode = HelperFunc.isDarkMode(context);

    return DefaultTabController(
      length: controller.mainController.categories.length,
      child: Scaffold(
          appBar: CustomAppbar(
            title: Text(
              t.screens.explore.appbar.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  backgroundColor: isDarkMode ? ThemeColors.black : ThemeColors.white,
                  expandedHeight: 320,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        /*const SizedBox(
                          height: CustomSizes.spaceBtwItems,
                        ),
                        SearchBox(
                          text: t.screens.home.search,
                          showBg: false,
                          showBorder: true,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: CustomSizes.spaceBtwItems,
                        ),*/
                        SectionHeading(
                          textColor: isDarkMode ? ThemeColors.white : ThemeColors.black,
                          title: t.screens.explore.authors.title,
                          onPressed: () => Get.toNamed('/author-list'),
                          showButtonAction: true,
                          buttonTitle: t.buttons.viewAll,
                        ),
                        const SizedBox(
                          height: CustomSizes.spaceBtwItems / 1.5,
                        ),
                        Obx(
                          () => GridLayout(
                              mainAxisExtent: 80,
                              itemCount: controller.authors.length >= 4 ? 4 : controller.authors.length,
                              itemBuilder: (_, index) {
                                return AuthorCard(
                                  author: controller.authors[index],
                                  showBorder: true,
                                  onTap: () {
                                    Get.to(() => const ProductConditional(), arguments: {
                                      "conditionalId": controller.authors[index].id,
                                      "title": controller.authors[index].name,
                                      "type": "author"
                                    });
                                  },
                                );
                              }),
                        )
                      ],
                    ),
                  ),

                  // Tab Categories
                  bottom: CustomTabBar(
                      tabController: controller.tabController,
                      onTap: (index) => controller.onChangeCategory(index),
                      tabs: controller.mainController.categories
                          .map((category) => Tab(child: Text(category.name)))
                          .toList()),
                ),
              ];
            },
            body: Obx(() => controller.isLoading.isTrue
                ? const Center(child: CircularProgressIndicator())
                : TabBarView(
                    controller: controller.tabController,
                    children: controller.mainController.categories.map((_) {
                      return CategoryTab(products: controller.products);
                    }).toList(),
                  )),
          )),
    );
  }
}
