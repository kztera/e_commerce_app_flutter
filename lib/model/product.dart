import 'package:zzz_book_store/model/author.dart';
import 'package:zzz_book_store/model/item.dart';

class Product extends Item {
  final String description;
  final dynamic rating;
  final List<String> images;
  final int numberOfReviews;

  /*categories */

  final int numOfDownloads;
  final int numOfLikes;
  final DateTime dateAdded;
  final List<Author> author;

  Product(
      {required this.description,
      required this.rating,
      required this.images,
      required this.numberOfReviews,
      required this.numOfDownloads,
      required this.numOfLikes,
      required this.dateAdded,
      required this.author,
      productId,
      productName,
      productImage,
      productPrice,
      productSaleOff})
      : super(
          id: productId,
          name: productName,
          price: productPrice,
          saleOff: productSaleOff,
          image: productImage,
        );

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        productId: json['id'],
        productName: json['name'],
        description: json['description'],
        productPrice: json['price'],
        rating: json['rating'],
        productSaleOff: json['saleOff'],
        productImage: json['image'],
        images: (json['images'] != null)
            ? (json['images'] as List).map((item) => item as String).toList()
            : [],
        numberOfReviews: json['numberOfReviews'],
        numOfDownloads: json['numOfDownloads'],
        numOfLikes: json['numOfLikes'],
        dateAdded: DateTime.parse(json['dateAdded']),
        author: (json['author'] != null)
            ? (json['author'] as List<dynamic>)
                .map((author) => Author.fromJson(author))
                .toList()
            : []);
  }
}
