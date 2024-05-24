import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/conditional_controller.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/product_card_vertical.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/inputs/search_box.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';

class ProductConditional extends StatelessWidget {
  const ProductConditional({super.key});

  @override
  Widget build(BuildContext context) {
    ConditionalController controller = Get.put(ConditionalController());
    return Scaffold(
        appBar: CustomAppbar(
            showBackButton: true,
            title: Text(controller.title,
                style: Theme.of(context).textTheme.headlineMedium)),
        body: Obx(() => controller.isLoading.isTrue
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                child: Column(
                  children: [
                    const SearchBox(text: 'Tìm kiếm...'),
                    const SizedBox(height: CustomSizes.defaultSpace),
                    Expanded(
                      child: SingleChildScrollView(
                        child: GridLayout(
                            itemCount: controller.filteredProducts.length,
                            itemBuilder: (_, index) =>
                                ProductCardVertical<Product>(
                                    item: controller.filteredProducts[index],
                                    author: controller.filteredProducts[index]
                                        .author[0].name)),
                      ),
                    ),
                  ],
                ),
              )));
  }
}
