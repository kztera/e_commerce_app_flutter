import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/main/home/curved_edge_widget.dart';
import 'package:zzz_book_store/widgets/shared/images/rounded_image.dart';

class ProductImageSlider extends StatelessWidget {
  final String image;

  const ProductImageSlider({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return CurvedEdgeWidget(
      child: Container(
        color: isDarkMode ? ThemeColors.darkerGrey : ThemeColors.light,
        child: Column(
          children: [
            // main image
            SizedBox(
              height: 350,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: CustomSizes.productImageRadius * 2,
                    bottom: CustomSizes.spaceBtwItems),
                child: Center(
                    child: CachedNetworkImage(
                  imageUrl: image,
                  fit: BoxFit.contain,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )),
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.separated(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (_, __) =>
                    const SizedBox(width: CustomSizes.spaceBtwItems),
                itemBuilder: (_, index) => RoundedImage(
                  imageUrl: Images.tt1,
                  width: 80,
                  bgColor: isDarkMode ? ThemeColors.dark : ThemeColors.white,
                  border: Border.all(color: ThemeColors.primary),
                  padding: const EdgeInsets.all(CustomSizes.sm),
                  isNetworkImage: false,
                ),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
