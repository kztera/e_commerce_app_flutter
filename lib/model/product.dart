import 'package:zzz_book_store/model/author.dart';

class Product {
  final String id;
  final String name;

  /*authors */

  final String description;
  final int price;
  final dynamic rating;
  final int saleOff;
  final String image;
  final int numberOfReviews;

  /*categories */

  final int numOfDownloads;
  final int numOfLikes;
  final DateTime dateAdded;

  final List<Author> author;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.rating,
      required this.saleOff,
      required this.image,
      required this.numberOfReviews,
      required this.numOfDownloads,
      required this.numOfLikes,
      required this.dateAdded,
      required this.author});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        price: json['price'],
        rating: json['rating'],
        saleOff: json['saleOff'],
        image: json['image'],
        numberOfReviews: json['numberOfReviews'],
        numOfDownloads: json['numOfDownloads'],
        numOfLikes: json['numOfLikes'],
        dateAdded: DateTime.parse(json['dateAdded']),
        author: (json['author'] as List<dynamic>)
            .map((author) => Author.fromJson(author))
            .toList());
  }
}
