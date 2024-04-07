import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/devices/device_utility.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunc.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            child: SvgPicture.asset(
          dark ? Images.appLogoDark : Images.appLogo,
          height: DeviceUtils.getScreenHeight() * 0.15,
        )),
        Text(t.screens.login.title, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: CustomSizes.sm),
        Text(t.screens.login.subtitle, style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}
