class OrderItem {
  final String id;
  final String product;
  final String productAuthorName;
  final String productName;
  final String productImage;
  final int productPrice;
  final int productSaleOff;

  OrderItem({
    required this.id,
    required this.product,
    required this.productAuthorName,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productSaleOff,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['_id'],
      product: json['product'],
      productAuthorName: json['productAuthorName'],
      productName: json['productName'],
      productImage: json['productImage'],
      productPrice: json['productPrice'],
      productSaleOff: json['productSaleOff'],
    );
  }
}
