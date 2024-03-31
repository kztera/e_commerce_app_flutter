import 'package:e_commerce_app_flutter_app/i18n/translations.g.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:e_commerce_app_flutter_app/utils/devices/device_utility.dart';
import 'package:e_commerce_app_flutter_app/utils/helpers/helper_function.dart';
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
        Text(t.widgets.login.title, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: CustomSizes.sm),
        Text(t.widgets.login.subtitle, style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}
