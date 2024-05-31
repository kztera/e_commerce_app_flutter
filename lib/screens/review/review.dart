import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/review_controller.dart';
import 'package:zzz_book_store/screens/review/rating_star.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = HelperFunc.isDarkMode(context);
    ReviewController controller = Get.put(ReviewController());

    return Scaffold(
      appBar: CustomAppbar(
        bgColor: Colors.transparent,
        title: Text(
          'Đánh giá sản phẩm',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackButton: true,
      ),
        bottomNavigationBar: ElevatedButton(
          onPressed: controller.onSubmitReview,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            minimumSize: const Size(double.infinity, 50),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: const Text("Gửi"),
        ),
      body: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: controller.orderItem.productImage,
                    fit: BoxFit.contain,
                    width: 20,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                  const SizedBox(width: CustomSizes.spaceBtwItems),
                  Text(controller.orderItem.productName)
                ],
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Obx(() => RatingStar(
                  rating: controller.rating.value,
                  onRatingChanged: (int value) {
                    controller.onRatingChanged(value);
                  })),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              _buildReviewForm(context, isDarkMode, controller.onCommentChanged)
            ],
          ),
        ),
      ),
    );
  }

  Container _buildReviewForm(BuildContext context, bool isDarkMode, onChanged) {
    return Container(
        width: double.infinity,
        height: HelperFunc.screenHeight() / 3,
        color: ThemeColors.grey,
        padding: const EdgeInsets.symmetric(vertical: CustomSizes.sm),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                onChanged: onChanged,
                  decoration: const InputDecoration(
                      hintText:
                          "Hãy chia sẻ nhận xét cho sản phẩm này bạn nhé!",
                      hintMaxLines: 2,
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none)),
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: isDarkMode
                            ? ThemeColors.light
                            : ThemeColors.darkerGrey,
                      ),
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  expands: true,
                  maxLength: 200),
            )
          ],
        ));
  }
}
