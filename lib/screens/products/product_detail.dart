import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/screens/products/product_meta_data.dart';
import 'package:zzz_book_store/screens/products/rating_share_button.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/main/products/bottom_product_detail.dart';
import 'package:zzz_book_store/widgets/main/products/product_image_slider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDarkMode = HelperFunc.isDarkMode(context);
    int index = Get.arguments["index"];
    String image = Get.arguments["image"];

    return Scaffold(
        bottomNavigationBar: const BottomProductDetail(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // 1. Image slider
              ProductImageSlider(image: image),
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
                    const RatingShareButton(),

                    ProductMetaData(index: index)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
