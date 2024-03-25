import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:e_commerce_app_flutter_app/routes/routes.dart';
import 'package:e_commerce_app_flutter_app/utils/theme/theme.dart';
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
    return GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      locale: TranslationProvider.of(context).flutterLocale, // use provider
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      getPages: Routes.pages,
      initialRoute: Routes.initial,
      debugShowCheckedModeBanner: false,
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
