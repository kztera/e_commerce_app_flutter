import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image
              Image(
                image: const AssetImage(Images.emailSent),
                // width: HelperFunc.screenWidth() * 0.7,
                height: HelperFunc.screenHeight() * 0.3,
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              // Title and subtitle
              Text(
                t.screens.register.text.verifyEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Text(
                "example@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
                child: Text(
                  t.screens.register.text.verifyEmailText,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(t.buttons.btcontinue),
                  onPressed: () => Get.toNamed('/register/success'),
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
                  child: Text(
                    t.buttons.resend,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
