import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/screens/products/product_review.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/images/circular_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_with_verify_icon.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_price_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_title_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundedContainer(
              radius: CustomSizes.sm,
              bgColor: ThemeColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: CustomSizes.sm,
                vertical: CustomSizes.xs,
              ),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge),
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems),
            const ProductPriceText(
              price: '250',
              lineThrough: true,
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        const ProductTitleText(
          title: 'Tam Thể 1',
          maxLines: 2,
          smallSize: false,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularImage(
              image: Images.author1,
              width: 32,
              height: 32,
              padding: 0,
            ),
            SizedBox(width: CustomSizes.spaceBtwItems / 2),
            AuthorTitleWithVerifyIcon(
              title: 'Lưu Từ Hân',
              authorTextSize: TextSizes.medium,
            ),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwSections),
        SectionHeading(
          title: t.screens.productDetails.description,
          showButtonAction: false,
          textColor: isDarkMode ? ThemeColors.light : ThemeColors.dark,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        // Readmore Text with collapse and expand
        ReadMoreText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean condimentum, dui sit amet egestas euismod, mauris tellus tempus nibh, ut placerat justo metus in arcu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas sagittis orci quis erat scelerisque, ac porta nisi laoreet. Morbi rhoncus euismod elit eget vehicula. Quisque eu aliquam nisl, sed luctus est. Nam magna odio, laoreet et nisl ut, bibendum lobortis lacus. Mauris accumsan nulla non felis eleifend convallis. Vivamus quis gravida ipsum. Nam libero tellus, posuere vel vulputate ac, fermentum vel turpis. Mauris congue, elit ac tristique fringilla, felis elit viverra ex, nec bibendum massa tortor sit amet diam. Morbi eget erat eu turpis accumsan blandit et eu elit. Sed porttitor convallis orci, sit amet auctor nibh aliquam nec. Quisque convallis tempus iaculis. Suspendisse potenti. Sed vel iaculis libero. Sed et orci hendrerit, lacinia diam sed, blandit eros. Integer aliquam leo vitae tortor vehicula, sit amet feugiat mi commodo. Vivamus posuere et metus ac scelerisque. Nulla quis ipsum eu mi iaculis ultrices non eget leo. Vestibulum aliquet consequat metus, eu ullamcorper neque faucibus vel. Mauris ipsum felis, feugiat non nisi id, pulvinar varius enim. Fusce facilisis elit eget pellentesque hendrerit. Fusce leo odio, facilisis sed placerat vel, mollis eu eros. Integer nisi enim, accumsan a risus et, ultrices rutrum ligula. Fusce ultrices vehicula turpis accumsan finibus. Curabitur at leo sed nisl eleifend semper ac eu lorem. Nunc finibus in orci nec consequat. Ut vestibulum ut felis et elementum. Aenean vitae quam a ipsum iaculis sodales. Aenean sit amet gravida elit. Mauris eleifend nisi at mauris eleifend, id molestie ipsum lobortis. Integer sit amet sodales urna. Praesent in lorem purus. Ut commodo lacus in rhoncus lobortis. Suspendisse non ante justo. Aliquam est odio, tempor et lectus sit amet, imperdiet condimentum metus. Nunc in dolor in lectus porttitor iaculis et eget quam. In hac habitasse platea dictumst. Aliquam eu fringilla urna. Vivamus quis justo at tellus posuere vehicula sit amet nec eros. Maecenas at leo a sapien placerat convallis id nec ipsum. Nam nisl nisl, vulputate quis tincidunt in, aliquam ut nisl. Vestibulum eget arcu erat. Phasellus eget leo at lectus aliquam egestas. Donec eu ex ligula. Quisque sed dignissim lectus, nec sollicitudin augue. Mauris vestibulum, nulla sit amet rhoncus fermentum, ligula magna pharetra augue, vel rutrum purus magna quis est. Nam porttitor et neque ac tempus. Nulla ac ante et ligula bibendum sodales. Vestibulum faucibus eget arcu nec interdum. Nam nec venenatis lacus. Sed ut dui in nisl mollis blandit non ac arcu. Nullam venenatis ut nibh ac sagittis. In vulputate, sapien sed malesuada lobortis, elit felis viverra enim, ut venenatis nisi felis a arcu. Donec accumsan sem mi, eu sodales tortor pulvinar sed. Sed risus mi, blandit iaculis ornare rutrum, elementum consequat libero. Fusce vel tellus maximus enim convallis semper ut ut lacus. Fusce posuere ullamcorper lacus scelerisque tincidunt. Duis a elit eu sem maximus tincidunt. Sed porta libero vel dolor tempus, in condimentum enim vulputate. Vestibulum vulputate, urna luctus finibus aliquam, lacus mi sagittis nunc, malesuada vulputate enim erat sed sem. Aliquam erat volutpat.',
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimCollapsedText: t.common.readMore,
          trimExpandedText: t.common.showLess,
          colorClickableText: ThemeColors.secondary,
          moreStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          lessStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
        // Review
        const Divider(color: ThemeColors.grey),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        GestureDetector(
          onTap: () => Get.to(() => const ProductReviewScreen()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SectionHeading(
                title: t.screens.productDetails.reviews,
                showButtonAction: false,
                textColor: isDarkMode ? ThemeColors.light : ThemeColors.dark,
              ),
              const Icon(
                Iconsax.arrow_right_34,
                size: 18,
              )
            ],
          ),
        )
      ],
    );
  }
}
