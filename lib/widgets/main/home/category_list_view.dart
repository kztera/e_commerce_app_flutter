import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/screens/products/product_conditional.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/main/home/category_card.dart';

class CategoryListView extends GetView<MainController> {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
          height: 60,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
                horizontal: CustomSizes.defaultSpace),
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () => Get.to(() => const ProductConditional(),
                          arguments: {
                            "conditionalId": controller.categories[index].id,
                            "title": controller.categories[index].name,
                            "type": 'category'
                          }),
                  child: CategoryCard(category: controller.categories[index]));
            },
          ),
        ));
  }
}
