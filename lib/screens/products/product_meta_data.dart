import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:zzz_book_store/controllers/product_detail_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/screens/products/product_review.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/images/circular_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_with_verify_icon.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_price_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_title_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class ProductMetaData extends GetView<ProductDetailController> {
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
              child: Text('${controller.product.value!.saleOff}%', style: Theme.of(context).textTheme.labelLarge),
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems),
            ProductPriceText(
              saleOff: controller.product.value!.saleOff,
              price: controller.product.value!.price,
              lineThrough: true,
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        ProductTitleText(
          title: controller.product.value!.name,
          maxLines: 2,
          smallSize: false,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        Obx(
          () => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularImage(
                isNetworkImage: true,
                image: controller.product.value!.author.first.image,
                width: 32,
                height: 32,
                padding: 0,
              ),
              const SizedBox(width: CustomSizes.spaceBtwItems / 2),
              AuthorTitleWithVerifyIcon(
                title: controller.product.value!.author.first.name,
                authorTextSize: TextSizes.medium,
              ),
            ],
          ),
        ),
        const SizedBox(height: CustomSizes.spaceBtwSections),
        SectionHeading(
          title: t.screens.productDetails.description,
          showButtonAction: false,
          textColor: isDarkMode ? ThemeColors.light : ThemeColors.dark,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        // Read more Text with collapse and expand
        ReadMoreText(
          controller.product.value!.description,
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
        InkWell(
          onTap: () {
            Get.to(() => const ProductReviewScreen());
            controller.getReviews();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SectionHeading(
                title: t.screens.productDetails.reviews,
                showButtonAction: false,
                textColor: isDarkMode ? ThemeColors.light : ThemeColors.dark,
              ),
              const Icon(Iconsax.arrow_right_34, size: 18)
            ],
          ),
        )
      ],
    );
  }
}
