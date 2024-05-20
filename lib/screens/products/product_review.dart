import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rating_summary/rating_summary.dart';
import 'package:zzz_book_store/controllers/product_detail_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/user_review_card.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';

class ProductReviewScreen extends GetView<ProductDetailController> {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          t.screens.productReview.appbar.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackButton: true,
      ),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Padding(
                padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(t.screens.productReview.subtitle),
                    const SizedBox(height: CustomSizes.spaceBtwItems),

                    // Rating Summary
                    RatingSummary(
                      counter: controller.reviews.value!.reviews.length,
                      average: controller.reviews.value!.averageRating,
                      showAverage: true,
                      counterFiveStars: controller.reviews.value!.count["5"]!,
                      counterFourStars: controller.reviews.value!.count["4"]!,
                      counterThreeStars: controller.reviews.value!.count["3"]!,
                      counterTwoStars: controller.reviews.value!.count["2"]!,
                      counterOneStars: controller.reviews.value!.count["1"]!,
                      label: t.screens.productDetails.rating,
                    ),
                    const SizedBox(height: CustomSizes.spaceBtwSections),
                    // User Review List
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.reviews.value!.reviews.length,
                        itemBuilder: (_, index) => UserReviewCard(
                              review: controller.reviews.value!.reviews[index],
                              averageRating:
                                  controller.reviews.value!.averageRating,
                            ))
                  ],
                ),
              ));
      }),
    );
  }
}
