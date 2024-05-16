import 'package:flutter/material.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';

class BillingPaymentPricing extends StatelessWidget {
  const BillingPaymentPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(t.screens.checkOut.payment.subTotal, style: Theme.of(context).textTheme.bodyMedium),
            Text('100.000 đ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(t.screens.checkOut.payment.taxFee, style: Theme.of(context).textTheme.bodyMedium),
            Text('20.000 đ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(t.screens.checkOut.payment.orderTotal, style: Theme.of(context).textTheme.bodyMedium),
            Text('120.000 đ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
