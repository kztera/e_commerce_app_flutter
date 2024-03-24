import 'package:e_commerce_app_flutter_app/controllers/onboarding_controller.dart';
import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter_app/widgets/onboarding/onboarding_dot_navigation.dart';
import 'package:e_commerce_app_flutter_app/widgets/onboarding/onboarding_next_button.dart';
import 'package:e_commerce_app_flutter_app/widgets/onboarding/onboarding_page.dart';
import 'package:e_commerce_app_flutter_app/widgets/onboarding/onboarding_skip_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    final List<Widget> pages = [
      OnBoardingPage(image: Images.onBoardingImage1, title: t.onBoardingTitle1, subtitle: t.onBoardingSubtitle1),
      OnBoardingPage(image: Images.onBoardingImage2, title: t.onBoardingTitle2, subtitle: t.onBoardingSubtitle2),
      OnBoardingPage(image: Images.onBoardingImage3, title: t.onBoardingTitle3, subtitle: t.onBoardingSubtitle3),
    ];

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndex,
            children: pages,
          ),
          OnboardingSkipButton(indexOfLastPage: pages.length - 1),
          const OnboardingDotNavigation(),
          OnboardingNextButton(indexOfLastPage: pages.length - 1)
        ],
      ),
    );
  }
}
