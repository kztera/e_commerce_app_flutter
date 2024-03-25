import "package:e_commerce_app_flutter_app/utils/constants/colors.dart";
import "package:e_commerce_app_flutter_app/utils/constants/image_strings.dart";
import "package:e_commerce_app_flutter_app/utils/constants/sizes.dart";
import "package:flutter/material.dart";

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: ThemeColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: CustomSizes.iconMd,
              width: CustomSizes.iconMd,
              image: AssetImage(Images.google),
            ),
          ),
        ),
        const SizedBox(width: CustomSizes.spaceBtwItems),
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: ThemeColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: CustomSizes.iconMd,
              width: CustomSizes.iconMd,
              image: AssetImage(Images.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
