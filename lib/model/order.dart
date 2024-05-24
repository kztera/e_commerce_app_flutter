import 'package:zzz_book_store/model/order_item.dart';

class Order {
  final String id;
  final List<dynamic> orderItems;
  final String email;
  final String status;
  final List<String> statusHistory;
  final int totalPrice;
  final String user;
  final DateTime dateOrdered;

  Order({
    required this.id,
    required this.orderItems,
    required this.email,
    required this.status,
    required this.statusHistory,
    required this.totalPrice,
    required this.user,
    required this.dateOrdered,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    var orderItemsFromJson = json['orderItems'] as List;
    List<dynamic> orderItemsList;

    if (orderItemsFromJson.isNotEmpty && orderItemsFromJson[0] is Map) {
      // If the first item is a Map, we assume all items are OrderItem models
      orderItemsList = orderItemsFromJson.map((item) => OrderItem.fromJson(item)).toList();
    } else {
      // Otherwise, we assume all items are Strings
      orderItemsList = List<String>.from(orderItemsFromJson);
    }

    return Order(
      id: json['_id'],
      orderItems: orderItemsList,
      email: json['email'],
      status: json['status'],
      statusHistory: List<String>.from(json['statusHistory']),
      totalPrice: json['totalPrice'],
      user: json['user'],
      dateOrdered: DateTime.parse(json['dateOrdered']),
    );
  }
}
