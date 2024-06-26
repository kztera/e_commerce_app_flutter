import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zzz_book_store/controllers/language_controller.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/controllers/theme_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/screens/orders/order.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/main/home/header_home.dart';
import 'package:zzz_book_store/widgets/shared/general/custom_appbar.dart';
import 'package:zzz_book_store/widgets/shared/texts/section_heading.dart';
import 'package:zzz_book_store/widgets/tiles/settings_menu_tile.dart';
import 'package:zzz_book_store/widgets/tiles/user_profile_tile.dart';

class SettingScreen extends GetView<MainController> {
  SettingScreen({super.key});
  final ThemesController themesController = Get.find();
  final LanguageController languageController = Get.find();

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          HeaderHome(
            child: Column(
              children: [
                CustomAppbar(
                  bgColor: Colors.transparent,
                  title: Text(
                    t.screens.settings.appbar.title,
                    style: Theme.of(context).textTheme.headlineMedium!.apply(color: ThemeColors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: CustomSizes.sm),
                  child: UserProjectTile(
                    onPressed: () => Get.toNamed('/profile'),
                  ),
                ),
                const SizedBox(height: CustomSizes.spaceBtwSections),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
            child: Column(
              children: [
                SectionHeading(
                  title: t.screens.settings.purchase.title,
                  showButtonAction: false,
                  textColor: isDarkMode ? ThemeColors.light : ThemeColors.dark,
                ),
                const SizedBox(height: CustomSizes.spaceBtwItems),
                SettingMenuTile(
                  icon: Iconsax.box_tick,
                  title: t.screens.settings.purchase.purchaseHistory.title,
                  subtitle: t.screens.settings.purchase.purchaseHistory.subtitle,
                  onTap: () => Get.to(() => const OrderScreen()),
                ),
                /*SettingMenuTile(
                  icon: Iconsax.activity,
                  title: t.screens.settings.purchase.pending.title,
                  subtitle: t.screens.settings.purchase.pending.subtitle,
                ),*/
                const SizedBox(height: CustomSizes.spaceBtwSections),
                SectionHeading(
                  title: t.screens.settings.app.title,
                  showButtonAction: false,
                  textColor: isDarkMode ? ThemeColors.light : ThemeColors.dark,
                ),
                const SizedBox(height: CustomSizes.spaceBtwItems),
                GetBuilder<ThemesController>(builder: (_) {
                  return SettingMenuTile(
                    icon: Iconsax.moon,
                    title: t.screens.settings.app.appearance,
                    trailing: themesController.theme == 'light'
                        ? t.common.light
                        : themesController.theme == 'dark'
                            ? t.common.dark
                            : t.common.system,
                    onTap: () => _showAppearanceModal(Theme.of(context), _.theme),
                  );
                }),
                GetBuilder<LanguageController>(builder: (_) {
                  return SettingMenuTile(
                    icon: Iconsax.language_circle,
                    title: t.screens.settings.app.language,
                    trailing: languageController.language == 'vi' ? 'Tiếng Việt' : 'English',
                    onTap: () => _showLanguageSelection(Theme.of(context)),
                  );
                }),
                /*SettingMenuTile(
                  icon: Iconsax.notification,
                  title: t.screens.settings.app.noti,
                ),
                SettingMenuTile(
                  icon: Iconsax.message_question,
                  title: t.screens.settings.app.help,
                ),*/
                SettingMenuTile(
                  icon: Iconsax.logout,
                  title: t.screens.settings.app.logout,
                  onTap: controller.signOut,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  _showAppearanceModal(ThemeData theme, String current) {
    Get.bottomSheet(Container(
      padding: const EdgeInsets.all(16),
      height: 320,
      decoration: BoxDecoration(
          color: Get.isDarkMode ? Colors.grey.shade900 : Colors.grey.shade200,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.common.selectTheme,
            style: theme.textTheme.headlineSmall,
          ),
          const SizedBox(height: 32),
          ListTile(
            leading: const Icon(
              Icons.brightness_5,
              color: Colors.blue,
            ),
            title: Text(
              t.common.light,
              style: theme.textTheme.bodyMedium,
            ),
            onTap: () {
              themesController.setTheme('light');
              Get.back();
            },
            trailing: Icon(
              Icons.check,
              color: current == 'light' ? Colors.blue : Colors.transparent,
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(
              Icons.brightness_2,
              color: Colors.orange,
            ),
            title: Text(t.common.dark, style: theme.textTheme.bodyMedium),
            onTap: () {
              themesController.setTheme('dark');
              Get.back();
            },
            trailing: Icon(
              Icons.check,
              color: current == 'dark' ? Colors.orange : Colors.transparent,
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(
              Icons.brightness_6,
              color: Colors.blueGrey,
            ),
            title: Text(t.common.system, style: theme.textTheme.bodyMedium),
            onTap: () {
              themesController.setTheme('system');
              Get.back();
            },
            trailing: Icon(
              Icons.check,
              color: current == 'system' ? Colors.blueGrey : Colors.transparent,
            ),
          ),
        ],
      ),
    ));
  }

  _showLanguageSelection(ThemeData theme) {
    Get.bottomSheet(Container(
      padding: const EdgeInsets.all(16),
      height: 320,
      decoration: BoxDecoration(
          color: Get.isDarkMode ? Colors.grey.shade900 : Colors.grey.shade200,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.common.selectLanguage,
            style: theme.textTheme.headlineSmall,
          ),
          const SizedBox(height: 32),
          ListTile(
            leading: const Icon(
              Icons.brightness_5,
              color: Colors.blue,
            ),
            title: Text(t.common.vietnamese, style: theme.textTheme.bodyMedium),
            onTap: () {
              languageController.setLanguage('vi');
              Get.back();
            },
            trailing: Icon(
              Icons.check,
              color: languageController.language == 'vi' ? Colors.blue : Colors.transparent,
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(
              Icons.brightness_2,
              color: Colors.orange,
            ),
            title: Text(t.common.english, style: theme.textTheme.bodyMedium),
            onTap: () {
              languageController.setLanguage('en');
              Get.back();
            },
            trailing: Icon(
              Icons.check,
              color: languageController.language == 'en' ? Colors.orange : Colors.transparent,
            ),
          ),
        ],
      ),
    ));
  }
}
