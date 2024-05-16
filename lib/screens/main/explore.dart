import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/main/explore/category_tab.dart';
import 'package:zzz_book_store/widgets/shared/cards/author_card.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_tabbar.dart';
import 'package:zzz_book_store/widgets/shared/inputs/search_box.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class ExploreScreen extends GetView<MainController> {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = HelperFunc.isDarkMode(context);

    return DefaultTabController(
      length: controller.categories.length,
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
                  backgroundColor:
                      isDarkMode ? ThemeColors.black : ThemeColors.white,
                  expandedHeight: 400,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        const SizedBox(
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
                        ),
                        SectionHeading(
                          textColor: isDarkMode
                              ? ThemeColors.white
                              : ThemeColors.black,
                          title: t.screens.explore.authors.title,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: CustomSizes.spaceBtwItems / 1.5,
                        ),
                        GridLayout(
                          mainAxisExtent: 80,
                          itemCount: controller.products.length,
                          itemBuilder: (_, index) {
                            return AuthorCard(
                              author: controller.products[index].author[0],
                              showBorder: true,
                              onTap: () {},
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  // Tab Categories
                  bottom: CustomTabBar(
                      tabs: controller.categories
                          .map((category) => Tab(child: Text(category.name)))
                          .toList()),
                ),
              ];
            },
            body: TabBarView(
              children: controller.categories
                  .map((category) => const CategoryTab())
                  .toList(),
            ),
          )),
    );
  }
}
