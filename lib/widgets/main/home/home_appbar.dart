import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/widgets/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(t.screens.home.appbar.title(name: "Đại ca"),
              style: Theme.of(context).textTheme.headlineSmall!.apply(color: ThemeColors.grey)),
          Text(t.screens.home.appbar.quote,
              style: Theme.of(context).textTheme.labelMedium!.apply(color: ThemeColors.grey)),
        ],
      ),
    );
  }
}
