import 'package:flutter/material.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';
import 'package:zzz_book_store/widgets/shared/images/circular_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/author_title_with_verify_icon.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Tooltip(
        message: "Lưu Từ Hân",
        preferBelow: false,
        child: RoundedContainer(
          showBorder: showBorder,
          padding: const EdgeInsets.only(left: CustomSizes.xs, right: CustomSizes.xs, bottom: CustomSizes.xs),
          bgColor: Colors.transparent,
          child: Row(
            children: [
              // Image
              const Flexible(
                child: CircularImage(
                  isNetworkImage: false,
                  image: Images.author1,
                  bgColor: Colors.transparent,
                ),
              ),
              // Text
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AuthorTitleWithVerifyIcon(
                      title: "Lưu Từ Hân",
                      authorTextSize: TextSizes.medium,
                    ),
                    Text(
                      t.screens.explore.authors.numberOfBooks(number: 10),
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
