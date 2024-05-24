import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/controllers/conditional_controller.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/devices/device_utility.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';

class SearchBox extends GetView<ConditionalController> {
  const SearchBox({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBg = true,
    this.showBorder = true,
    this.padding =
        const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBg, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = HelperFunc.isDarkMode(context);

    return Container(
      width: DeviceUtils.getScreenWidth(context),
      padding: const EdgeInsets.symmetric(horizontal: CustomSizes.md),
      decoration: BoxDecoration(
        color: showBg
            ? (isDarkMode ? ThemeColors.dark : ThemeColors.light)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(CustomSizes.cardRadiusLg),
        border: showBorder
            ? Border.all(
                color:
                    isDarkMode ? ThemeColors.darkGrey : ThemeColors.darkerGrey,
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
          Expanded(
            child: TextField(
              onChanged: (newQuery) => controller.updateQuery(newQuery),
              decoration: InputDecoration(
                  hintText: text,
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none)),
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color:
                        isDarkMode ? ThemeColors.light : ThemeColors.darkerGrey,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
