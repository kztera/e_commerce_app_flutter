import 'package:e_commerce_app_flutter_app/app.dart';
import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  runApp(TranslationProvider(child: const App()));
}
