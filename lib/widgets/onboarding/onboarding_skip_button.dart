import 'package:zzz_book_store/controllers/onboarding_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/devices/device_utility.dart';
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
          child: Text(t.buttons.skip, style: Theme.of(context).textTheme.labelLarge),
        ));
  }
}
