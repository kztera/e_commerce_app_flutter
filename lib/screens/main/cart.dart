import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/images/rounded_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_with_verify_icon.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_price_text.dart';
import 'package:zzz_book_store/widgets/shared/texts/product_title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.find();

    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          minimumSize: const Size(double.infinity, 50),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        child: Text(t.screens.cart.checkout(totalPrice: '124.000')),
      ),
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: ListView.separated(
          itemCount: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) => const SizedBox(
            height: CustomSizes.spaceBtwItems,
          ),
          itemBuilder: (_, index) => Slidable(
            key: ValueKey('key$index'),
            endActionPane: ActionPane(
              motion: const DrawerMotion(),
              dismissible: DismissiblePane(onDismissed: () {}),
              children: [
                SlidableAction(
                  onPressed: (context) {},
                  backgroundColor: const Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: t.buttons.delete,
                ),
              ],
            ),
            child: const ProductCardHorizontal(),
          ),
        ),
      ),
    );
  }
}

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);
    return Row(
      children: [
        RoundedImage(
          imageUrl: Images.book2,
          isNetworkImage: false,
          width: 100,
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: CustomSizes.xs),
          bgColor: isDarkMode ? ThemeColors.darkerGrey : ThemeColors.light,
        ),
        const SizedBox(width: CustomSizes.spaceBtwItems),

        // Title and author
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthorTitleWithVerifyIcon(title: "Lưu Từ Hân"),
                  ProductTitleText(
                    title: "Tam Thể 2",
                    maxLines: 1,
                  ),
                ],
              ),
              SizedBox(height: CustomSizes.spaceBtwItems),
              Row(
                children: [
                  ProductPriceText(
                    price: '124.000',
                    lineThrough: true,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
