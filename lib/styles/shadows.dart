import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';

class ShadowStyle {
  static final verticalProductCard = BoxShadow(
    color: ThemeColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2),
  );

  static final horizontalProductCard = BoxShadow(
    color: ThemeColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2),
  );
}
