import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/controllers/order_controller.dart';
import 'package:zzz_book_store/screens/main/orders/order_detail.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/formatter/formatter.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';

class OrderListItems extends GetView<OrderController> {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);
    return Obx(
      () => controller.isLoading.isTrue
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              shrinkWrap: true,
              itemCount: controller.orders.length,
              separatorBuilder: (_, __) =>
                  const SizedBox(height: CustomSizes.spaceBtwItems),
              itemBuilder: (_, index) =>
                  _buildOrderItem(isDarkMode, index, context),
            ),
    );
  }

  GestureDetector _buildOrderItem(
      bool isDarkMode, int index, BuildContext context) {
    return GestureDetector(
      onTap: (){
        controller.setSelected(index);
        Get.to(()=> const OrderDetail());
      },
      child: RoundedContainer(
        showBorder: true,
        bgColor: isDarkMode ? ThemeColors.dark : ThemeColors.light,
        padding: const EdgeInsets.all(CustomSizes.md),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(width: CustomSizes.spaceBtwItems / 2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(controller.orders[index].status,
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: ThemeColors.primary, fontWeightDelta: 1)),
                      Text(
                          Formatter.formatDate(
                              controller.orders[index].dateOrdered),
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.arrow_right_34,
                        size: CustomSizes.iconSm))
              ],
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems),
            Row(
              children: [
                const Icon(Iconsax.card),
                const SizedBox(width: CustomSizes.spaceBtwItems / 2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Thanh toán',
                          style: Theme.of(context).textTheme.labelMedium),
                      Text(
                          Formatter.formatCurrency(
                              controller.orders[index].totalPrice),
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems),
            Row(
              children: [
                const Icon(Iconsax.tag),
                const SizedBox(width: CustomSizes.spaceBtwItems / 2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Đơn hàng',
                          style: Theme.of(context).textTheme.labelMedium),
                      Text(controller.orders[index].id,
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
