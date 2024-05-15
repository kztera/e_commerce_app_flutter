import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/formatter/formatter.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/utils/helpers/pricing_calculator.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    required this.saleOff,
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final int price;
  final int saleOff;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
            Formatter.formatCurrency(
                (PricingCalculator.getSaleOffPrice(price, saleOff))),
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style: isLarge
                ? Theme.of(context).textTheme.headlineSmall
                : Theme.of(context).textTheme.headlineMedium),
        lineThrough
            ? Text(
                Formatter.formatCurrency(price),
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
                style: isLarge
                    ? Theme.of(context).textTheme.titleSmall!.apply(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: isDarkMode
                              ? ThemeColors.white
                              : ThemeColors.black,
                          color: isDarkMode
                              ? ThemeColors.grey.withOpacity(0.6)
                              : ThemeColors.darkGrey.withOpacity(0.6),
                        )
                    : Theme.of(context).textTheme.labelLarge!.apply(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: isDarkMode
                              ? ThemeColors.white
                              : ThemeColors.black,
                          color: isDarkMode
                              ? ThemeColors.grey.withOpacity(0.6)
                              : ThemeColors.darkGrey.withOpacity(0.6),
                        ),
              )
            : const SizedBox(height: CustomSizes.sm),
      ],
    );
  }
}
