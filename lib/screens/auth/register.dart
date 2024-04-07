import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/register/register_form.dart';
import 'package:zzz_book_store/widgets/register/register_header.dart';
import 'package:zzz_book_store/widgets/shared/form_divider.dart';
import 'package:zzz_book_store/widgets/shared/social_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RegisterHeader(),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              const RegisterForm(),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed('/register/verify-email'),
                  child: Text(t.screens.register.button.createAccount),
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              FormDivider(text: t.screens.register.text.orSignUpWith),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
