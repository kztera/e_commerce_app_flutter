import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/styles/spacing_styles.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/shared/buttons/social_buttons.dart';
import 'package:zzz_book_store/widgets/login/login_form.dart';
import 'package:zzz_book_store/widgets/shared/forms/form_divider.dart';
import 'package:zzz_book_store/widgets/login/login_header.dart';
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
            FormDivider(text: t.screens.login.text.orSignInWith),
            const SizedBox(height: CustomSizes.spaceBtwSections),
            const SocialButton()
          ],
        ),
      ),
    ));
  }
}
