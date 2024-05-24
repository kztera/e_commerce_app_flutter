import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/forgot_controller.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/devices/device_utility.dart';
import 'package:flutter/gestures.dart';
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
                TextFormField(
                  // onChanged: controller.setEmail,
                  // validator: (value) {},
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password_outlined),
                    labelText: "New Password",
                  ),
                ),
                const SizedBox(height: CustomSizes.spaceBtwInputFields),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      // onPressed: controller.onSubmit,
                      onPressed: () {},
                      child: Text("Đặt lại mật khẩu"),
                    )),
              ],
            ),
          ),
        ));
  }
}
