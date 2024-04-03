import "package:e_commerce_app_flutter_app/controllers/register_controller.dart";
import "package:e_commerce_app_flutter_app/i18n/translations.g.dart";
import "package:e_commerce_app_flutter_app/utils/constants/colors.dart";
import "package:e_commerce_app_flutter_app/utils/constants/sizes.dart";
import "package:e_commerce_app_flutter_app/utils/helpers/helper_function.dart";
import "package:e_commerce_app_flutter_app/widgets/register/check_password.dart";
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
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: t.screens.register.form.fullName,
              prefixIcon: const Icon(Iconsax.user),
            ),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: t.screens.register.form.username,
              prefixIcon: const Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: t.screens.register.form.email,
              prefixIcon: const Icon(Icons.email_outlined),
            ),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: t.screens.register.form.phoneNo,
              prefixIcon: const Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: t.screens.register.form.password,
              prefixIcon: const Icon(Icons.password_outlined),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
            onChanged: (value) => {
              controller.onChangePassword(value),
            },
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: t.screens.register.form.confirmPassword,
              prefixIcon: const Icon(Icons.password_outlined),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
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
                            color: dark ? ThemeColors.white : ThemeColors.primary,
                            decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                        text: ' ${t.buttons.and} ',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: t.screens.register.text.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? ThemeColors.white : ThemeColors.primary,
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
