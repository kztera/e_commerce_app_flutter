import 'package:zzz_book_store/model/cart.dart';
import 'package:zzz_book_store/model/wishlist.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final bool isAdmin;
  /* final Cart cart;
  final Wishlist wishlist; */
  final String? accessToken;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.isAdmin,
      /*  required this.cart,
      required this.wishlist, */
      this.accessToken});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["_id"],
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      isAdmin: json["isAdmin"],
      accessToken: json.containsKey("accessToken") ? json["accessToken"] : null,
      /* cart: json["cart"],
        wishlist: json["wishlist"] */
    );
  }
}
