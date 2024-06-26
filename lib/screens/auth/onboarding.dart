import 'package:zzz_book_store/controllers/onboarding_controller.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/widgets/onboarding/onboarding_dot_navigation.dart';
import 'package:zzz_book_store/widgets/onboarding/onboarding_next_button.dart';
import 'package:zzz_book_store/widgets/onboarding/onboarding_page.dart';
import 'package:zzz_book_store/widgets/onboarding/onboarding_skip_button.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    final List<Widget> pages = [
      OnBoardingPage(
          image: Images.onBoardingImage1,
          title: t.screens.onboarding.title.t1,
          subtitle: t.screens.onboarding.subtitle.st1),
      OnBoardingPage(
          image: Images.onBoardingImage2,
          title: t.screens.onboarding.title.t2,
          subtitle: t.screens.onboarding.subtitle.st2),
      OnBoardingPage(
          image: Images.onBoardingImage3,
          title: t.screens.onboarding.title.t3,
          subtitle: t.screens.onboarding.subtitle.st3),
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
