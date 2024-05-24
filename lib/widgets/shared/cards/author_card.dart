import 'package:flutter/material.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/model/author.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/images/circular_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_with_verify_icon.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    super.key,
    required this.author,
    this.onTap,
    required this.showBorder,
  });

  final Author author;
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Tooltip(
        message: author.name,
        preferBelow: false,
        child: RoundedContainer(
          showBorder: showBorder,
          padding: const EdgeInsets.only(left: CustomSizes.xs, right: CustomSizes.xs, bottom: CustomSizes.xs),
          bgColor: Colors.transparent,
          child: Row(
            children: [
              // Image
              Flexible(
                child: CircularImage(
                  isNetworkImage: true,
                  image: author.image,
                  fit: BoxFit.cover,
                ),
              ),
              // Text
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthorTitleWithVerifyIcon(
                      title: author.name,
                      authorTextSize: TextSizes.medium,
                    ),
                    Text(
                      t.screens.explore.authors.numberOfBooks(number: author.productCount),
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
