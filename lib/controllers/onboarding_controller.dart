import 'package:e_commerce_app_flutter_app/utils/helpers/logger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndex(index) => currentPageIndex.value = index;

  void onNavigationPress(index) {
    currentPageIndex.value = index;
    pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  void nextPage(indexOfLastPage) {
    if (currentPageIndex.value < indexOfLastPage) {
      pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      LoggerHelper.debug('Last page reached');
    }
  }

  void onSkip(indexOfLastPage) {
    pageController.animateToPage(indexOfLastPage, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}
