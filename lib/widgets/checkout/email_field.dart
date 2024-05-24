import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/cart_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';

class EmailField extends GetView<CartController> {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      bgColor: isDarkMode ? ThemeColors.dark : ThemeColors.light,
      padding: const EdgeInsets.only(
        top: CustomSizes.sm,
        bottom: CustomSizes.sm,
        left: CustomSizes.md,
        right: CustomSizes.sm,
      ),
      child: Form(
        key: controller.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: TextFormField(
          onChanged: controller.setEmail,
          validator: (value) => controller.validateEmail(value),
          decoration: InputDecoration(
            hintText: t.screens.checkOut.payment.hintEmail,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
