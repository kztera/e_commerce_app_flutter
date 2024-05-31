import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/explore_controller.dart';
import 'package:zzz_book_store/screens/products/product_conditional.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/author_card.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';

class AuthorList extends StatelessWidget {
  const AuthorList({super.key});

  @override
  Widget build(BuildContext context) {
    ExploreController controller = Get.put(ExploreController());

    return Scaffold(
      appBar: CustomAppbar(
        title: Text("Danh sách tác giả", style: Theme.of(context).textTheme.headlineMedium),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Obx(
                () => GridLayout(
                  mainAxisExtent: 80,
                  itemCount: controller.authors.length,
                  itemBuilder: (_, index) {
                    return AuthorCard(
                      author: controller.authors[index],
                      showBorder: true,
                      onTap: () {
                        Get.to(() => const ProductConditional(), arguments: {
                          "conditionalId": controller.authors[index].id,
                          "title": controller.authors[index].name,
                          "type": "author"
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
