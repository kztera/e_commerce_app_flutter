import 'package:flutter/material.dart';
import 'package:zzz_book_store/model/cart.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/images/rounded_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_with_verify_icon.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_price_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_title_text.dart';

class ProductCardHorizontal extends StatelessWidget {
  final Cart cart;

  const ProductCardHorizontal({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);
    return Row(
      children: [
        RoundedImage(
          imageUrl: cart.productImage,
          isNetworkImage: true,
          width: 100,
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: CustomSizes.xs),
          bgColor: isDarkMode ? ThemeColors.darkerGrey : ThemeColors.light,
        ),
        const SizedBox(width: CustomSizes.spaceBtwItems),

        // Title and author
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthorTitleWithVerifyIcon(title: "Lưu Từ Hân"),
                  ProductTitleText(
                    title: cart.productName,
                    maxLines: 1,
                  ),
                ],
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Row(
                children: [
                  ProductPriceText(
                    price:cart.productPrice,
                    lineThrough: true,
                    saleOff: cart.productSaleOff,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
