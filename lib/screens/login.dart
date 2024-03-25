import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:e_commerce_app_flutter_app/styles/spacing_styles.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:e_commerce_app_flutter_app/widgets/shared/social_buttons.dart';
import 'package:e_commerce_app_flutter_app/widgets/login/login_form.dart';
import 'package:e_commerce_app_flutter_app/widgets/shared/form_divider.dart';
import 'package:e_commerce_app_flutter_app/widgets/login/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: SpacingStyles.paddingWithAppBarHeight,
        child: Column(
          children: [
            const LoginHeader(),
            const LoginForm(),
            FormDivider(text: t.login.common.orSignInWith),
            const SizedBox(height: CustomSizes.spaceBtwSections),
            const SocialButton()
          ],
        ),
      ),
    ));
  }
}
