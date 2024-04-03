import 'package:e_commerce_app_flutter_app/i18n/translations.g.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(
            CustomSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                t.screens.forgotPassword.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwItems,
              ),
              Text(
                t.screens.forgotPassword.subtitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSections * 1.5,
              ),
              // email input
              TextFormField(
                decoration: InputDecoration(
                  labelText: t.screens.forgotPassword.form.email,
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSections,
              ),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {
                    Get.toNamed('/verify-otp'),
                  },
                  child: Text(t.screens.forgotPassword.button.resetPassword),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
