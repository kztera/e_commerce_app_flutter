import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/order_controller.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/order/order_list.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrderController());
    return Scaffold(
        appBar: CustomAppbar(
          showBackButton: true,
          title: Text("Đơn hàng của tôi",
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        body: const Padding(
            padding:EdgeInsets.all(CustomSizes.defaultSpace),
            child: OrderListItems()));
  }
}
