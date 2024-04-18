import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this.currencySign = "đ",
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      price + currencySign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
                decorationColor: ThemeColors.black.withOpacity(0.8),
                color: lineThrough ? Theme.of(context).disabledColor : ThemeColors.black,
              )
          : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
                color: lineThrough ? Theme.of(context).disabledColor : ThemeColors.black,
              ),
    );
  }
}
