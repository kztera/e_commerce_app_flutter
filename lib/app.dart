import 'package:zzz_book_store/controllers/language_controller.dart';
import 'package:zzz_book_store/controllers/theme_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/routes/routes.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemesController themeController = Get.put(ThemesController());
    final LanguageController languageController = Get.put(LanguageController());
    return GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      locale: TranslationProvider.of(context).flutterLocale, // use provider
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      themeMode: getThemeMode(themeController.theme),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      getPages: Routes.pages,
      initialRoute: HelperFunc.checkToken() ? Routes.main : Routes.initial,
      debugShowCheckedModeBanner: false,
      fallbackLocale: const Locale('en', 'US'),
    );
  }

  ThemeMode getThemeMode(String type) {
    ThemeMode themeMode = ThemeMode.system;
    switch (type) {
      case "system":
        themeMode = ThemeMode.system;
        break;
      case "dark":
        themeMode = ThemeMode.dark;
        break;
      default:
        themeMode = ThemeMode.light;
        break;
    }

    return themeMode;
  }
}
