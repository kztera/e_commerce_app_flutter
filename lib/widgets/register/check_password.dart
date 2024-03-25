import 'package:e_commerce_app_flutter_app/controllers/register_controller.dart';
import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/colors.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckPassword extends GetView<RegisterController> {
  const CheckPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          PasswordCondition(
            text: t.register.common.minChar,
            isValid: controller.isMinCharValid.value,
          ),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          PasswordCondition(
            text: t.register.common.atLeastOne,
            isValid: controller.isAtLeastOneValid.value,
          ),
        ],
      ),
    );
  }
}

class PasswordCondition extends StatelessWidget {
  const PasswordCondition({
    super.key,
    required this.text,
    required this.isValid,
  });

  final String text;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ThemeColors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.check_circle,
            size: CustomSizes.lg,
            color: isValid ? ThemeColors.success : ThemeColors.grey,
          ),
        ),
        const SizedBox(
          width: CustomSizes.sm,
        ),
        Text(text, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
