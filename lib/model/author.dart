class Author {
  final int productCount;
  final String id;
  final String name;
  final String bio;
  final String image;
  final bool isDisabled;

  //products

  Author(
      {required this.productCount,
      required this.id,
      required this.name,
      required this.bio,
      required this.image,
      required this.isDisabled});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
        productCount: json['productCount'],
        id: json['id'],
        name: json['name'],
        bio: json['bio'],
        image: json['image'],
        isDisabled: json['isDisabled']);
  }
}
