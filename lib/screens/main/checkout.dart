import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/cart_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/formatter/formatter.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/carts/cart_items.dart';
import 'package:zzz_book_store/widgets/checkout/billing_payment_method.dart';
import 'package:zzz_book_store/widgets/checkout/billing_payment_pricing.dart';
import 'package:zzz_book_store/widgets/checkout/coupon_code.dart';
import 'package:zzz_book_store/widgets/checkout/email_field.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';

class CheckOutScreen extends GetView<CartController> {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: /* () => Get.to(
          () => SuccessScreen(
            title: t.messages.checkOutSuccess.title,
            subTitle: t.messages.checkOutSuccess.subTitle,
            onContinue: () => Get.offAndToNamed('/main'),
          ),
        ) */controller.onPayment,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          minimumSize: const Size(double.infinity, 50),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        child: Text(t.screens.cart.checkout(
            totalPrice:
                Formatter.formatCurrency(controller.totalPayment.value))),
      ),
      appBar: CustomAppbar(
        bgColor: Colors.transparent,
        title: Text(
          t.screens.checkOut.appbar.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              const CouponCode(),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(CustomSizes.md),
                bgColor: isDarkMode ? ThemeColors.dark : ThemeColors.light,
                child: const Column(
                  children: [
                    // pricing
                    BillingPaymentPricing(),
                    SizedBox(height: CustomSizes.spaceBtwItems),
                    // divider,
                    Divider(),
                    SizedBox(height: CustomSizes.spaceBtwItems),
                    // payment method
                    BillingPaymentMethod()
                  ],
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections / 2),
              const EmailField()
            ],
          ),
        ),
      ),
    );
  }
}
