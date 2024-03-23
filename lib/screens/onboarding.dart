import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:e_commerce_app_flutter_app/utils/devices/device_utility.dart';
import 'package:e_commerce_app_flutter_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingPage(image: Images.onBoardingImage1, title: t.onBoardingTitle1, subtitle: t.onBoardingSubtitle1),
              OnBoardingPage(image: Images.onBoardingImage2, title: t.onBoardingTitle2, subtitle: t.onBoardingSubtitle2),
              OnBoardingPage(image: Images.onBoardingImage3, title: t.onBoardingTitle3, subtitle: t.onBoardingSubtitle3),
            ],
          ),
          const OnboardingSkipButton()
        ],
      ),
    );
  }
}

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: DeviceUtils.getAppBarHeight(),
        right: CustomSizes.defaultSpace,
        child: TextButton(
          onPressed: () {},
          child: Text(t.skip, style: Theme.of(context).textTheme.labelLarge),
        ));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required this.image, required this.title, required this.subtitle});

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CustomSizes.defaultSpace),
      child: Column(
        children: [
          Image(width: HelperFunc.screenWidth() * 0.8, height: HelperFunc.screenHeight() * 0.6, image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
