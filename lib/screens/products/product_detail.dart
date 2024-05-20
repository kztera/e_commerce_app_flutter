import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/product_detail_controller.dart';
import 'package:zzz_book_store/screens/products/product_meta_data.dart';
import 'package:zzz_book_store/screens/products/rating_share_button.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/main/products/bottom_product_detail.dart';
import 'package:zzz_book_store/widgets/main/products/product_image_slider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ProductDetailController controller = Get.put(ProductDetailController());

    // final isDarkMode = HelperFunc.isDarkMode(context);
    return Scaffold(
        bottomNavigationBar: const BottomProductDetail(),
        body: Obx(() {
          if (controller.isLoading.isTrue) {
            return const Center(child: CircularProgressIndicator());
          }
          if (controller.product.value == null) {
            return const Center(child: Text("No data"));
          }

          return SingleChildScrollView(
            child: Column(
              children: [
                // 1. Image slider
                ProductImageSlider(
                  image: controller.product.value!.image,
                  images: controller.product.value!.images,
                ),
                // 2. Product Details
                Padding(
                  padding: const EdgeInsets.only(
                    right: CustomSizes.defaultSpace,
                    left: CustomSizes.defaultSpace,
                    bottom: CustomSizes.defaultSpace,
                  ),
                  child: Column(
                    children: [
                      // Rating
                      RatingShareButton(rating: controller.product.value!.rating),
                      const ProductMetaData()
                    ],
                  ),
                )
              ],
            ),
          );
        }));
  }
}
