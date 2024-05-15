import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/screens/main/checkout.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/carts/cart_items.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.find();

    return Scaffold(
      bottomNavigationBar: mainController.cartCount.value != 0
          ? ElevatedButton(
              onPressed: () => Get.to(() => const CheckOutScreen()),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: const Size(double.infinity, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: Text(t.screens.cart.checkout(totalPrice: '124.000')),
            )
          : null,
      appBar: CustomAppbar(
        title: Text(t.screens.cart.appbar.title, style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: mainController.cartCount.value == 0 ? _buildEmptyCart(context) : _buildCartList(context),
    );
  }

  Widget _buildEmptyCart(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(t.screens.cart.empty.title, style: Theme.of(context).textTheme.headlineMedium),
          Text(t.screens.cart.empty.subtitle, style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }

  Widget _buildCartList(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(CustomSizes.defaultSpace),
        child: CartItems(),
      ),
    );
  }
}
