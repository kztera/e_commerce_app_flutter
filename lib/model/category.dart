import 'package:zzz_book_store/model/product.dart';

class Category {
  final String id;
  final String name;
  final String colour;
  final String image;
  final List<Product> products;
  final bool isDisable;

  Category(
      {required this.id,
      required this.name,
      required this.colour,
      required this.image,
      required this.products,
      required this.isDisable});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['_id'],
      name: json['name'],
      colour: json['colour'],
      image: json['image'],
      products: (json['product'] != null && json['product'] is List)
          ? (json['product'] as List)
              .map((product) => Product.fromJson(product))
              .toList()
          : [],
      isDisable: json['isDisable'],
    );
  }
}
