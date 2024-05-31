import 'package:zzz_book_store/model/item.dart';

class Wishlist extends Item {
  final String productAuthorName;
  Wishlist({productId, productName, productImage, productPrice, productSaleOff, required this.productAuthorName})
      : super(
          id: productId,
          name: productName,
          image: productImage,
          price: productPrice,
          saleOff: productSaleOff,
        );

  factory Wishlist.fromJson(Map<String, dynamic> json) {
    return Wishlist(
        productId: json['productId'],
        productImage: json['productImage'],
        productPrice: json['productPrice'],
        productName: json['productName'],
        productSaleOff: json['productSaleOff'],
        productAuthorName: json['productAuthorName']);
  }
}
