import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import "package:zzz_book_store/i18n/translations.g.dart";
import 'package:zzz_book_store/controllers/forgot_controller.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';

class ResetPasswordScreen extends GetView<ForgotController> {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          showBackButton: true,
          title: Text(
            "Đặt lại mật khẩu",
            style: Theme.of(context).textTheme.headlineMedium!.apply(color: ThemeColors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              right: CustomSizes.defaultSpace,
              left: CustomSizes.defaultSpace,
              top: CustomSizes.spaceBtwSections * 3,
              bottom: CustomSizes.spaceBtwSections,
            ),
            child: Column(
              children: [
                // email input
                Form(
                  key: controller.formKeyReset,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Obx(() => TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: controller.hidePassword.value,
                        decoration: InputDecoration(
                          labelText: t.screens.register.form.password,
                          prefixIcon: const Icon(Icons.password_outlined),
                          suffixIcon: InkWell(
                            onTap: controller.visibilityPassword,
                            child: Icon(controller.hidePassword.isTrue ? Iconsax.eye_slash : Iconsax.eye),
                          ),
                        ),
                        validator: (value) => controller.validatePassword(value),
                        onChanged: controller.setPassword,
                      )),
                ),
                const SizedBox(height: CustomSizes.spaceBtwInputFields),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      // onPressed: controller.onSubmit,
                      onPressed: controller.onResetPassword,
                      child: const Text("Đặt lại mật khẩu"),
                    )),
              ],
            ),
          ),
        ));
  }
}
