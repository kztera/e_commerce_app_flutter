import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CartCount extends StatelessWidget {
  const CartCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: ThemeColors.error,
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: const BoxConstraints(
        minWidth: 16,
        minHeight: 16,
      ),
      child: const Text(
        '2',
        style: TextStyle(
          color: ThemeColors.white,
          fontSize: 10,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
