import 'package:e_commerce_app_flutter_app/app.dart';
import 'package:e_commerce_app_flutter_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
  LocaleSettings.useDeviceLocale();
  runApp(TranslationProvider(child: const App()));
}
