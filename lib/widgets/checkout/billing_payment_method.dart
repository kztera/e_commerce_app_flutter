import 'package:flutter/material.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class BillingPaymentMethod extends StatelessWidget {
  const BillingPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return Column(
      children: [
        SectionHeading(
          title: t.screens.checkOut.payment.title,
          buttonTitle: t.buttons.change,
          textColor: isDarkMode ? ThemeColors.white : ThemeColors.black,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2),
        Row(
          children: [
            RoundedContainer(
              width: 80,
              height: 80,
              bgColor: isDarkMode ? ThemeColors.light : ThemeColors.white,
              padding: const EdgeInsets.all(CustomSizes.sm),
              child: Icon(
                Icons.paypal_outlined,
                size: 60,
                color: isDarkMode ? ThemeColors.light : ThemeColors.dark,
              ),
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems),
            Text(t.screens.checkOut.payment.paypal, style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
