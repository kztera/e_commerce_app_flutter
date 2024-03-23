import 'package:e_commerce_app_flutter_app/utils/constants/colors.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CheckBoxCustomTheme {
  CheckBoxCustomTheme._(); // To avoid creating instances

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CustomSizes.xs)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return ThemeColors.white;
      } else {
        return ThemeColors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return ThemeColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CustomSizes.xs)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return ThemeColors.white;
      } else {
        return ThemeColors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return ThemeColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
