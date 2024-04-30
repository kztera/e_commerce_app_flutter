import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';

class AuthorTitleText extends StatelessWidget {
  const AuthorTitleText({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = ThemeColors.primary,
    this.textAlign = TextAlign.center,
    this.authorTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes authorTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: authorTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
          : authorTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
              : authorTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: textColor)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: textColor),
    );
  }
}
