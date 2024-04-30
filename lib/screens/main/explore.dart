import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/images/circular_image.dart';
import 'package:zzz_book_store/widgets/shared/inputs/search_box.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_with_verify_icon.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return Scaffold(
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
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
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
                        title: t.screens.explore.authors.title,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwItems / 1.5,
                      ),
                      GridLayout(
                          mainAxisExtent: 80,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Tooltip(
                                message: "Lưu Từ Hân",
                                preferBelow: false,
                                child: RoundedContainer(
                                  padding: const EdgeInsets.all(CustomSizes.xs),
                                  showBorder: true,
                                  bgColor: Colors.transparent,
                                  child: Row(
                                    children: [
                                      // Image
                                      const Flexible(
                                        child: CircularImage(
                                          isNetworkImage: false,
                                          image: Images.author1,
                                          bgColor: Colors.transparent,
                                        ),
                                      ),
                                      // Text
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const AuthorTitleWithVerifyIcon(
                                              title: "Lưu Từ Hân",
                                              authorTextSize: TextSizes.medium,
                                            ),
                                            Text(
                                              t.screens.explore.authors.numberOfBooks(number: 10),
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context).textTheme.labelMedium,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(),
        ));
  }
}
