import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/product_card_horizontal.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
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
    );
  }
}
