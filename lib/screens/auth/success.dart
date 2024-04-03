import 'package:e_commerce_app_flutter_app/i18n/translations.g.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:e_commerce_app_flutter_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CustomSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image
                Image(
                  image: const AssetImage(Images.success),
                  // width: HelperFunc.screenWidth() * 0.7,
                  height: HelperFunc.screenHeight() * 0.3,
                ),
                const SizedBox(height: CustomSizes.spaceBtwSections),
                // Title and subtitle
                Text(
                  t.screens.register.text.successVerifyEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: CustomSizes.spaceBtwItems),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
                  child: Text(
                    t.screens.register.text.successVerifyEmailSubtitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: CustomSizes.spaceBtwSections),
                // Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(t.screens.login.button.signIn), onPressed: () => Get.offAndToNamed('/login')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
