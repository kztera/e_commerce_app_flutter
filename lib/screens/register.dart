import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:e_commerce_app_flutter_app/widgets/register/register_form.dart';
import 'package:e_commerce_app_flutter_app/widgets/register/register_header.dart';
import 'package:e_commerce_app_flutter_app/widgets/shared/form_divider.dart';
import 'package:e_commerce_app_flutter_app/widgets/shared/social_buttons.dart';
import 'package:flutter/material.dart';

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
                  onPressed: () {},
                  child: Text(t.login.button.createAccount),
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              FormDivider(text: t.register.common.orSignUpWith),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
