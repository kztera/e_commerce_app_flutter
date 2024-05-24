import 'package:zzz_book_store/controllers/forgot_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends GetView<ForgotController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Form(
              key: controller.formKeyForgot,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: controller.setEmail,
                validator: (value) => controller.validateEmail(value),
                decoration: InputDecoration(
                  labelText: t.screens.forgotPassword.form.email,
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwSections),
            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: controller.onSubmit,
                child: Text(t.screens.forgotPassword.button.resetPassword),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
