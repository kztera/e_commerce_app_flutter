import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(Images.author1),
                ),
                const SizedBox(width: CustomSizes.spaceBtwItems),
                Text('Lưu Từ Hân', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        Row(
          children: [
            RatingBarIndicator(
              rating: 3.5,
              itemSize: 15,
              itemBuilder: (context, index) {
                return const Icon(Icons.star, color: ThemeColors.secondary);
              },
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems),
            // date of review use intl package
            Text(DateFormat.yMMMd().format(DateTime.now()), style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        ReadMoreText(
          'Sách rất hay, mình rất thích, đọc xong mình đã mua thêm 1 cuốn khác',
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimCollapsedText: t.common.readMore,
          trimExpandedText: t.common.showLess,
          colorClickableText: ThemeColors.secondary,
          moreStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          lessStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
