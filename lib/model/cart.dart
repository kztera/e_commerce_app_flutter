class Cart {
  final String id;
  final String productId;
  final String productName;
  final String productImage;
  final int productPrice;
  final int productSaleOff;

  Cart({
    required this.id,
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productSaleOff
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['_id'],
      productId: json['product'],
      productName: json['productName'],
      productImage: json['productImage'],
      productPrice: json['productPrice'],
      productSaleOff: json['productSaleOff']
    );
  }
}
