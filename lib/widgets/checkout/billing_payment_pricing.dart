import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/cart_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/formatter/formatter.dart';

class BillingPaymentPricing extends GetView<CartController> {
  const BillingPaymentPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(t.screens.checkOut.payment.subTotal, style: Theme.of(context).textTheme.bodyMedium),
            Text(Formatter.formatCurrency(controller.totalAmount.value), style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(t.screens.checkOut.payment.taxFee, style: Theme.of(context).textTheme.bodyMedium),
            Text(Formatter.formatCurrency(controller.tax.value), style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(t.screens.checkOut.payment.orderTotal, style: Theme.of(context).textTheme.bodyMedium),
            Obx(() => Text(Formatter.formatCurrency(controller.totalPayment.value),
                style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
      ],
    );
  }
}
