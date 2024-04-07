import 'package:zzz_book_store/controllers/onboarding_controller.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/devices/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunc.isDarkMode(context);
    final controller = OnboardingController.instance;

    return Positioned(
        bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
        left: CustomSizes.defaultSpace,
        child: SmoothPageIndicator(
            count: 3,
            controller: controller.pageController,
            onDotClicked: controller.onNavigationPress,
            effect: ExpandingDotsEffect(activeDotColor: dark ? ThemeColors.light : ThemeColors.dark, dotHeight: 6)));
  }
}
