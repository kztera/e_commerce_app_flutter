import "package:e_commerce_app_flutter_app/utils/constants/colors.dart";
import "package:e_commerce_app_flutter_app/utils/helpers/helper_function.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class FormDivider extends StatelessWidget {
  const FormDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunc.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? ThemeColors.darkGrey : ThemeColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(text.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: dark ? ThemeColors.darkGrey : ThemeColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}
