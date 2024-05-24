import 'package:zzz_book_store/model/item.dart';

class Cart extends Item {
  final String productAuthorName;
  Cart(
      {productId,
      productName,
      productImage,
      productPrice,
      productSaleOff,
      required this.productAuthorName})
      : super(
            id: productId,
            name: productName,
            image: productImage,
            price: productPrice,
            saleOff: productSaleOff);

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      productId: json['product'] ?? '',
      productName: json['productName'] ?? '',
      productImage: json['productImage'] ?? '',
      productPrice: (json['productPrice'] ?? 0),
      productSaleOff: (json['productSaleOff'] ?? 0),
      productAuthorName: json['productAuthorName'] ?? '',
    );
  }
}
