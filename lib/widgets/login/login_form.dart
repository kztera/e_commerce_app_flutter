import "package:zzz_book_store/controllers/login_controller.dart";
import "package:zzz_book_store/i18n/translations.g.dart";
import "package:zzz_book_store/utils/constants/sizes.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class LoginForm extends GetView<LoginController> {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKeySignIn,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: CustomSizes.spaceBtwSections),
          child: Column(
            children: [
              // email input
              TextFormField(
                onChanged: controller.setEmail,
                validator: (value)=>controller.validateEmail(value),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  labelText: t.screens.login.form.email,
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields),
              Obx(() => TextFormField(
                obscureText: controller.hidePassword.value,
                onChanged: controller.setPassword,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password_outlined),
                      labelText: t.screens.login.form.password,
                      suffixIcon: InkWell(
                        onTap: controller.visibilityPassword,
                        child: Icon(controller.hidePassword.isTrue
                            ? Iconsax.eye_slash
                            : Iconsax.eye),
                      )))),
              const SizedBox(height: CustomSizes.spaceBtwInputFields / 2),

              // Remember and ForgetPassword
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: CustomSizes.lg,
                        width: CustomSizes.lg,
                        child: Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(width: CustomSizes.xs),
                      Text(t.screens.login.text.rememberMe)
                    ],
                  ),
                  TextButton(
                    onPressed: () => {Get.toNamed('/forgot-password')},
                    child: Text(t.screens.login.text.forgotPassword),
                  )
                ],
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              // Sign in button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: controller.onSubmit,
                    child: Text(t.screens.login.button.signIn),
                  )),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => Get.toNamed('/register'),
                    child: Text(t.screens.login.button.createAccount),
                  )),
              const SizedBox(height: CustomSizes.spaceBtwSections),
            ],
          ),
        ));
  }
}
