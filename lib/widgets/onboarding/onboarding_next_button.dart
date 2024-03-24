import 'package:e_commerce_app_flutter_app/controllers/onboarding_controller.dart';
import 'package:e_commerce_app_flutter_app/utils/devices/device_utility.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/colors.dart';
import 'package:e_commerce_app_flutter_app/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
    required this.indexOfLastPage,
  });

  final int indexOfLastPage;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunc.isDarkMode(context);

    return Positioned(
        bottom: DeviceUtils.getBottomNavigationBarHeight(),
        right: CustomSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () => OnboardingController.instance.nextPage(indexOfLastPage),
          style:
              ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? ThemeColors.buttonPrimary : ThemeColors.dark),
          child: const Icon(
            Iconsax.arrow_right_3,
          ),
        ));
  }
}
