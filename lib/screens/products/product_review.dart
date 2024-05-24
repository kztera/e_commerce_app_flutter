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
        if (controller.isLoading.isTrue) {
          return const Center(child: CircularProgressIndicator());
        }
        final reviewsModel = controller.reviews.value;
        if (reviewsModel!.reviews.isEmpty) {
          return Center(child: Text("No data", style: Theme.of(context).textTheme.headlineMedium));
        }

        return SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(t.screens.productReview.subtitle),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              // Rating Summary
              RatingSummary(
                counter: reviewsModel.reviews.length,
                average: reviewsModel.averageRating.toDouble(),
                showAverage: true,
                counterFiveStars: reviewsModel.count["5"]!,
                counterFourStars: reviewsModel.count["4"]!,
                counterThreeStars: reviewsModel.count["3"]!,
                counterTwoStars: reviewsModel.count["2"]!,
                counterOneStars: reviewsModel.count["1"]!,
                label: t.screens.productDetails.rating,
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              // User Review List
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: reviewsModel.reviews.length,
                  itemBuilder: (_, index) => UserReviewCard(
                        review: reviewsModel.reviews[index],
                        averageRating: reviewsModel.averageRating.toDouble(),
                      ))
            ],
          ),
        ));
      }),
    );
  }
}
