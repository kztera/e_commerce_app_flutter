import 'package:flutter/material.dart';
import 'package:rating_summary/rating_summary.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/user_review_card.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';

class ProductReviewScreen extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(t.screens.productReview.subtitle),
              const SizedBox(height: CustomSizes.spaceBtwItems),

              // Rating Summary
              RatingSummary(
                counter: 13,
                average: 3.846,
                showAverage: true,
                counterFiveStars: 5,
                counterFourStars: 4,
                counterThreeStars: 2,
                counterTwoStars: 1,
                counterOneStars: 1,
                label: t.screens.productDetails.rating,
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              // User Review List
              const UserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}
