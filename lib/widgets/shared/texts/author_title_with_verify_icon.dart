import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_text.dart';

class AuthorTitleWithVerifyIcon extends StatelessWidget {
  const AuthorTitleWithVerifyIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = ThemeColors.primary,
    this.textAlign = TextAlign.start,
    this.authorTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes authorTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: AuthorTitleText(
            title: title,
            maxLines: maxLines,
            textColor: textColor,
            textAlign: textAlign,
            authorTextSize: authorTextSize,
          ),
        ),
        const SizedBox(width: CustomSizes.xs),
        const Icon(Iconsax.verify5, size: CustomSizes.iconXs, color: ThemeColors.primary)
      ],
    );
  }
}
