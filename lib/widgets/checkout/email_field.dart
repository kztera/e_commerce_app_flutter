import 'package:flutter/material.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/shared/cards/rounded_container.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      bgColor: isDarkMode ? ThemeColors.dark : ThemeColors.light,
      padding: const EdgeInsets.only(
        top: CustomSizes.sm,
        bottom: CustomSizes.sm,
        left: CustomSizes.md,
        right: CustomSizes.sm,
      ),
      child: Flexible(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: t.screens.checkOut.payment.hintEmail,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
