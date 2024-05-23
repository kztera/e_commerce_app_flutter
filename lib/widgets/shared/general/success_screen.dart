import 'package:flutter/material.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/styles/spacing_styles.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onContinue,
  });

  final String title, subTitle;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: SpacingStyles.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            // success icon
            const Icon(Icons.check_circle, size: 100, color: Colors.green),
            const SizedBox(height: CustomSizes.spaceBtwSections),

            // title and subtitle
            Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: CustomSizes.spaceBtwItems),
            Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: CustomSizes.spaceBtwSections),

            // continue button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onContinue,
                child: Text(t.buttons.btcontinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
