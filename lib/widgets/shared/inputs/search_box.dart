import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/devices/device_utility.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBg = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBg, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = HelperFunc.isDarkMode(context);

    return Padding(
      padding: padding,
      child: Container(
        width: DeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(CustomSizes.md),
        decoration: BoxDecoration(
          color: showBg ? (isDarkMode ? ThemeColors.dark : ThemeColors.light) : Colors.transparent,
          borderRadius: BorderRadius.circular(CustomSizes.cardRadiusLg),
          border: showBorder
              ? Border.all(
                  color: isDarkMode ? ThemeColors.darkGrey : ThemeColors.darkerGrey,
                )
              : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isDarkMode ? ThemeColors.lightGrey : ThemeColors.darkerGrey,
              size: CustomSizes.iconXs,
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.labelSmall!.apply(
                    color: isDarkMode ? ThemeColors.light : ThemeColors.darkerGrey,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
