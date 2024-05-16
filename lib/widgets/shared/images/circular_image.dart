import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.width = 60,
    this.height = 60,
    this.overlayColor,
    this.bgColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = CustomSizes.sm,
    this.isNetworkImage = false,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? bgColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: bgColor ?? (isDarkMode ? ThemeColors.black : ThemeColors.white),
        // borderRadius: BorderRadius.circular(100),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: isNetworkImage
                ? CachedNetworkImage(
                    imageUrl: image,
                    fit: fit,
                    width: width,
                    height: height,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )
                : Image.asset(image, fit: fit, width: width, height: height)),
      ),
    );
  }
}
