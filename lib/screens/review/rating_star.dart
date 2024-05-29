import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';

class RatingStar extends StatelessWidget {
  final int starCount;
  final int rating;
  final Function(int) onRatingChanged;
  final Color? color;

  const RatingStar(
      {super.key,
      this.starCount = 5,
      this.rating = 1,
      this.color,
      required this.onRatingChanged});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = const Icon(
        Icons.star_border,
        color: ThemeColors.grey,
        size: 40,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color ?? ThemeColors.secondary,
        size: 40,
      );
    }
    return InkResponse(
      onTap: () => onRatingChanged(index + 1),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            List.generate(starCount, (index) => buildStar(context, index)));
  }
}
