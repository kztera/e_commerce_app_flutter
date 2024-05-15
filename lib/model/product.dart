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
      required this.dateAdded});

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
        dateAdded: DateTime.parse(json['dateAdded']));
  }
}
