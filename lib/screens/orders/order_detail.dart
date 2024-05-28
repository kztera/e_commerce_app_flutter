import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/order_controller.dart';
import 'package:zzz_book_store/model/order_item.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/product_card_horizontal.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';

class OrderDetail extends GetView<OrderController> {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        bgColor: Colors.transparent,
        title: Text(
          'Chi tiết đơn hàng',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              ListView.separated(
                  itemCount:
                      controller.orders[controller.selected].orderItems.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: CustomSizes.spaceBtwItems),
                  itemBuilder: (_, index) {
                    OrderItem orderItem = controller
                        .orders[controller.selected].orderItems[index];
                    return ProductCardHorizontal(
                      productName: orderItem.productName,
                      image: orderItem.productImage,
                      author: orderItem.productAuthorName,
                      price: orderItem.productPrice,
                      saleOff: orderItem.productSaleOff,
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
