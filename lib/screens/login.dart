import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:e_commerce_app_flutter_app/styles/spacing_styles.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:e_commerce_app_flutter_app/utils/devices/device_utility.dart';
import 'package:e_commerce_app_flutter_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunc.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: SpacingStyles.paddingWithAppBarHeight,
        child: Column(
          children: [
            // Logo
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    child: SvgPicture.asset(
                  dark ? Images.appLogoDark : Images.appLogo,
                  height: DeviceUtils.getScreenHeight() * 0.15,
                )),
                Text(t.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: CustomSizes.sm),
                Text(t.loginSubtitle, style: Theme.of(context).textTheme.bodyMedium)
              ],
            )
          ],
        ),
      ),
    ));
  }
}
