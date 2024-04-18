import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import "package:zzz_book_store/utils/constants/sizes.dart";
import 'package:zzz_book_store/utils/helpers/helper_function.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    super.key,
    required this.icon,
    this.color,
    this.bgColor,
    this.height,
    this.width,
    this.size = CustomSizes.md,
    this.onPressed,
  });

  final double? height, width, size;
  final IconData icon;
  final Color? color;
  final Color? bgColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor != null
            ? bgColor!
            : isDarkMode
                ? ThemeColors.black.withOpacity(0.8)
                : ThemeColors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(CustomSizes.productImageRadius),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
