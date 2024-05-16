import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:zzz_book_store/utils/constants/sizes.dart';

class CartCount extends StatelessWidget {
  const CartCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());

    return Obx(
      () => controller.carts.isEmpty
          ? const SizedBox()
          : Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: ThemeColors.error,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: const BoxConstraints(
                minWidth: CustomSizes.md,
                minHeight: CustomSizes.md,
              ),
              child: Text(
                "${controller.carts.length}",
                style: const TextStyle(
                  color: ThemeColors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
