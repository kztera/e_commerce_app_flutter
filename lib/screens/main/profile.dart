import 'package:flutter/material.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/widgets/main/profile/profile_menu.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/images/circular_image.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(t.screens.settings.appbar.title, style: Theme.of(context).textTheme.headlineMedium),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: Images.author1,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      child: Text(t.screens.settings.profile.changePicture),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              SectionHeading(
                title: t.screens.settings.profile.profileInfo,
                showButtonAction: false,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              ProfileMenu(onPressed: () {}, title: t.screens.settings.profile.name, value: "Lưu Từ Hân"),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              ProfileMenu(onPressed: () {}, title: t.screens.settings.profile.gender, value: 'Male'),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              ProfileMenu(onPressed: () {}, title: t.screens.settings.profile.birth, value: "22/01/1998"),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              SectionHeading(
                title: t.screens.settings.profile.accountInfo,
                showButtonAction: false,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              ProfileMenu(onPressed: () {}, title: t.screens.settings.profile.username, value: "luutuhan"),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              ProfileMenu(onPressed: () {}, title: t.screens.settings.profile.email, value: "luutuhan@gmail.com"),
              const SizedBox(height: CustomSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: CustomSizes.defaultSpace),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    t.screens.settings.profile.closeAccount,
                    style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
