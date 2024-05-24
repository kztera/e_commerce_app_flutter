class Review {
  final String id;
  final String user;
  final String userName;
  final String comment;
  final int rating;
  final DateTime date;

  Review({
    required this.id,
    required this.user,
    required this.userName,
    required this.comment,
    required this.rating,
    required this.date,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      id: json['_id'],
      user: json['user'],
      userName: json['userName'],
      comment: json['comment'],
      rating: json['rating'],
      date: DateTime.parse(json['date']),
    );
  }
}

