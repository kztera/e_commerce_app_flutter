import "package:e_commerce_app_flutter_app/i18n/strings.g.dart";
import "package:e_commerce_app_flutter_app/utils/constants/sizes.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: CustomSizes.spaceBtwSections),
      child: Column(
        children: [
          // email input
          TextFormField(
            decoration: InputDecoration(prefix: const Icon(Icons.email_outlined), labelText: t.login.form.email),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password_outlined),
                labelText: t.login.form.password,
                suffixIcon: const Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields / 2),

          // Remember and ForgetPassword
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(t.login.common.rememberMe)
                ],
              ),
              TextButton(onPressed: () {}, child: Text(t.login.common.forgotPassword))
            ],
          ),
          const SizedBox(height: CustomSizes.spaceBtwSections),

          // Sign in button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text(t.login.button.signIn))),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: () {}, child: Text(t.login.button.createAccount))),
          const SizedBox(height: CustomSizes.spaceBtwSections),
        ],
      ),
    ));
  }
}
