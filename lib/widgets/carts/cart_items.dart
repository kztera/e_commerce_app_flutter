import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/cart_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/product_card_horizontal.dart';

class CartItems extends GetView<CartController> {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.separated(
        itemCount: controller.mainController.carts.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) =>
            const SizedBox(height: CustomSizes.spaceBtwItems),
        itemBuilder: (_, index) => Slidable(
          key: ValueKey(index),
          endActionPane: ActionPane(
            motion: const DrawerMotion(),
            /* dismissible: DismissiblePane(onDismissed: () {
              
            }), */
            children: [
              SlidableAction(
                onPressed: (context) {
                  controller.onRemoveToCart(index);
                },
                backgroundColor: const Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: t.buttons.delete,
              ),
            ],
          ),
          child: ProductCardHorizontal(
              productName: controller.mainController.carts[index].name,
              image: controller.mainController.carts[index].image,
              author: '',
              price: controller.mainController.carts[index].price,
              saleOff: controller.mainController.carts[index].saleOff),
        ),
      );
    });
  }
}
