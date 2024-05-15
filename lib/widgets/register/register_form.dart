import "package:zzz_book_store/controllers/register_controller.dart";
import "package:zzz_book_store/i18n/translations.g.dart";
import "package:zzz_book_store/utils/constants/colors.dart";
import "package:zzz_book_store/utils/constants/sizes.dart";
import "package:zzz_book_store/utils/helpers/helper_function.dart";
import "package:zzz_book_store/widgets/register/check_password.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class RegisterForm extends GetView<RegisterController> {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunc.isDarkMode(context);

    return Form(
      key: controller.formKeySignUp,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: t.screens.register.form.fullName,
              prefixIcon: const Icon(Iconsax.user),
            ),
            validator: (value) => controller.validateName(value),
            onChanged: controller.setFullName,
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: t.screens.register.form.username,
              prefixIcon: const Icon(Iconsax.user_edit),
            ),
            onChanged: controller.setUsername,
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: t.screens.register.form.email,
              prefixIcon: const Icon(Icons.email_outlined),
            ),
            validator: (value) => controller.validateEmail(value),
            onChanged: controller.setEmail,
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: t.screens.register.form.phoneNo,
              prefixIcon: const Icon(Iconsax.call),
            ),
            validator: (value) => controller.validatePhone(value),
            onChanged: controller.setPhone,
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          Obx(() => TextFormField(
            keyboardType: TextInputType.text,
            obscureText: controller.hidePassword.value,
            decoration: InputDecoration(
              labelText: t.screens.register.form.password,
              prefixIcon: const Icon(Icons.password_outlined),
              suffixIcon: InkWell(
                onTap: controller.visibilityPassword,
                child: Icon(controller.hidePassword.isTrue ?
                 Iconsax.eye_slash : Iconsax.eye),
              ),
            ),
            validator: (value) => controller.validatePassword(value),
            onChanged: controller.setPassword,
          )),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          Obx(() => TextFormField(
            keyboardType: TextInputType.text,
            obscureText: controller.hideConfirmPassword.value,
            decoration: InputDecoration(
              labelText: t.screens.register.form.confirmPassword,
              prefixIcon: const Icon(Icons.password_outlined),
              suffixIcon: InkWell(
                onTap: controller.visibilityConfirmPassword,
                child: Icon(controller.hideConfirmPassword.isTrue ?
                 Iconsax.eye_slash : Iconsax.eye),
              ),
            ),
            validator: (value) => controller.comparePassword(value),
            onChanged: controller.setConfirmPassword,
          )),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          const CheckPassword(),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          // terms and conditions
          Row(
            children: [
              SizedBox(
                width: CustomSizes.lg,
                height: CustomSizes.lg,
                child: Checkbox(value: false, onChanged: (value) {}),
              ),
              const SizedBox(width: CustomSizes.sm),
              Flexible(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: t.screens.register.text.iAgreeTo,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: t.screens.register.text.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color:
                                dark ? ThemeColors.white : ThemeColors.primary,
                            decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                        text: ' ${t.buttons.and} ',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: t.screens.register.text.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color:
                                dark ? ThemeColors.white : ThemeColors.primary,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
