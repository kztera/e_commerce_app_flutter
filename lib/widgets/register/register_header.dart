import "package:e_commerce_app_flutter_app/i18n/strings.g.dart";
import "package:e_commerce_app_flutter_app/utils/constants/sizes.dart";
import "package:flutter/material.dart";

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.register.title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        Text(
          t.register.subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}