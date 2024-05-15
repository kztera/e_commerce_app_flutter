import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/screens/products/product_review.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/formatter/formatter.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/images/circular_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_with_verify_icon.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_price_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_title_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class ProductMetaData extends StatelessWidget {
  final int index;
  const ProductMetaData({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    MainController controller = Get.find();
    Product product = controller.products[index];

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
              child: Text('${product.saleOff}%',
                  style: Theme.of(context).textTheme.labelLarge),
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems),
            ProductPriceText(
              saleOff: product.saleOff,
              price: product.price,
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
          product.description,
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
