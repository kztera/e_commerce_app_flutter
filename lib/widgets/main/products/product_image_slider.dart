import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/main/home/curved_edge_widget.dart';
import 'package:zzz_book_store/widgets/shared/images/rounded_image.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return CurvedEdgeWidget(
      child: Container(
        color: isDarkMode ? ThemeColors.darkerGrey : ThemeColors.light,
        child: Column(
          children: [
            // main image
            const SizedBox(
              height: 350,
              child: Padding(
                padding: EdgeInsets.only(top: CustomSizes.productImageRadius * 2, bottom: CustomSizes.spaceBtwItems),
                child: Center(
                  child: Image(
                    image: AssetImage(Images.tt1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.separated(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (_, __) => const SizedBox(width: CustomSizes.spaceBtwItems),
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
