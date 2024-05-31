import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';

class LanguageController extends GetxController {
  final storage = GetStorage();
  String language = LocaleSettings.currentLocale.languageCode;

  @override
  void onInit() {
    super.onInit();
    getLanguageState();
  }

  getLanguageState() {
    var languageData = storage.read('language');
    if (languageData != null) {
      return setLanguage(languageData);
    }

    setLanguage(language);
  }

  void setLanguage(String languageCode) {
    language = languageCode;
    storage.write('language', language);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (language == 'vi') {
        LocaleSettings.setLocale(AppLocale.vi);
        Get.updateLocale(const Locale('vi', 'VN'));
      }
      if (language == 'en') {
        LocaleSettings.setLocale(AppLocale.en);
        Get.updateLocale(const Locale('en', 'US'));
      }
    });
    update();
  }
}
