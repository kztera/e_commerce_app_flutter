import 'package:zzz_book_store/model/review.dart';

class ReviewSummary {
  final double averageRating;
  final Map<String, int> count;
  final List<Review> reviews;

  ReviewSummary({
    required this.averageRating,
    required this.count,
    required this.reviews,
  });

  factory ReviewSummary.fromJson(Map<String, dynamic> json) {
    var reviewsFromJson = json['reviews'] as List;
    List<Review> reviewsList =
        reviewsFromJson.map((json) => Review.fromJson(json)).toList();

    return ReviewSummary(
        averageRating: json['averageRating'] ?? 0,
        count: Map<String, int>.from(json['count']),
        reviews: reviewsList);
  }
}
