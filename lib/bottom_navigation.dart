import "package:zzz_book_store/controllers/main_controller.dart";
import "package:zzz_book_store/utils/config/bottom_navigation_bar_config.dart";
import "package:zzz_book_store/utils/constants/animations.dart";
import "package:zzz_book_store/utils/constants/colors.dart";
import "package:zzz_book_store/utils/constants/sizes.dart";
import "package:zzz_book_store/utils/helpers/helper_function.dart";
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import "package:flutter/material.dart";
import "package:get/get.dart";

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
    final darkMode = HelperFunc.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => BottomBarSalomon(
            items: bottomNavigationItems,
            color: darkMode ? ThemeColors.white : ThemeColors.black,
            colorSelected: ThemeColors.white,
            backgroundColor: darkMode ? ThemeColors.black : ThemeColors.white,
            backgroundSelected: ThemeColors.primary,
            borderRadius: BorderRadius.circular(0),
            indexSelected: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            animated: true,
            bottom: CustomSizes.md,
            duration:
                const Duration(milliseconds: AnimationTimes.durationVeryShort),
          ),
        ),
        body: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ));
  }
}
