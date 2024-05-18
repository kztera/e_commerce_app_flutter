import 'package:zzz_book_store/model/item.dart';

class Cart extends Item {
  Cart({productId, productName, productImage, productPrice, productSaleOff})
      : super(
            id: productId,
            name: productName,
            image: productImage,
            price: productPrice,
            saleOff: productSaleOff);

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
        productId: json['product'],
        productName: json['productName'],
        productImage: json['productImage'],
        productPrice: json['productPrice'],
        productSaleOff: json['productSaleOff']);
  }
}
