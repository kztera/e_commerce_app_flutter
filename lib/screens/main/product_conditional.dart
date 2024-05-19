import 'package:flutter/material.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/widgets/shared/cards/product_card_vertical.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/layouts/grid_layout.dart';

class ProductConditional extends StatelessWidget {
  const ProductConditional({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppbar(
    title: Text(
    t.screens.explore.appbar.title,
    style: Theme.of(context).textTheme.headlineMedium
    )), body: SingleChildScrollView(child:
    Container()/*GridLayout(
        itemCount: 4,
        itemBuilder: (_, index) => ProductCardVertical(
            item: products[index],
            author: products[index].author[0].name))*/));
  }
}
