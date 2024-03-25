import 'package:e_commerce_app_flutter_app/controllers/onboarding_controller.dart';
import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:e_commerce_app_flutter_app/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
    required this.indexOfLastPage,
  });

  final int indexOfLastPage;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: DeviceUtils.getAppBarHeight(),
        right: CustomSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnboardingController.instance.onSkip(indexOfLastPage),
          child: Text(t.button.skip, style: Theme.of(context).textTheme.labelLarge),
        ));
  }
}
