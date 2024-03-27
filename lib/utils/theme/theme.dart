import 'package:e_commerce_app_flutter_app/utils/constants/colors.dart';
import 'package:e_commerce_app_flutter_app/utils/theme/widgets/appbar_custom_theme.dart';
import 'package:e_commerce_app_flutter_app/utils/theme/widgets/bottom_sheet_custom_theme.dart';
import 'package:e_commerce_app_flutter_app/utils/theme/widgets/checkbox_custom_theme.dart';
import 'package:e_commerce_app_flutter_app/utils/theme/widgets/chip_custom_theme.dart';
import 'package:e_commerce_app_flutter_app/utils/theme/widgets/elvated_button_custom_theme.dart';
import 'package:e_commerce_app_flutter_app/utils/theme/widgets/outlined_button_custom_theme.dart';
import 'package:e_commerce_app_flutter_app/utils/theme/widgets/text_custom_theme.dart';
import 'package:e_commerce_app_flutter_app/utils/theme/widgets/text_field_custom_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'LexendDeca',
      disabledColor: ThemeColors.grey,
      brightness: Brightness.light,
      primaryColor: ThemeColors.primary,
      textTheme: TextCustomTheme.lightTextTheme,
      chipTheme: ChipCustomTheme.lightChipTheme,
      scaffoldBackgroundColor: ThemeColors.white,
      appBarTheme: AppBarCustomTheme.lightAppBarTheme,
      checkboxTheme: CheckBoxCustomTheme.lightCheckboxTheme,
      bottomSheetTheme: BottomSheetCustomTheme.lightBottomSheetTheme,
      elevatedButtonTheme: ElevatedButtonCustomTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: OutlinedButtonCustomTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TextFieldCustomTheme.lightInputDecorationTheme,
      splashColor: Colors.transparent);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'LexendDeca',
      disabledColor: ThemeColors.darkerGrey,
      brightness: Brightness.dark,
      primaryColor: ThemeColors.primary,
      textTheme: TextCustomTheme.darkTextTheme,
      chipTheme: ChipCustomTheme.darkChipTheme,
      scaffoldBackgroundColor: ThemeColors.dark,
      appBarTheme: AppBarCustomTheme.darkAppBarTheme,
      checkboxTheme: CheckBoxCustomTheme.darkCheckboxTheme,
      bottomSheetTheme: BottomSheetCustomTheme.darkBottomSheetTheme,
      elevatedButtonTheme: ElevatedButtonCustomTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: OutlinedButtonCustomTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TextFieldCustomTheme.darkInputDecorationTheme,
      splashColor: Colors.transparent);
}
