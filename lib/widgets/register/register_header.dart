import "package:zzz_book_store/i18n/translations.g.dart";
import "package:zzz_book_store/utils/constants/sizes.dart";
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
          t.screens.register.title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        Text(
          t.screens.register.subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
