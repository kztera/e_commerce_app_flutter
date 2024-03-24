/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 22 (11 per locale)
///
/// Built on 2024-03-23 at 18:10 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
  en(languageCode: 'en', build: Translations.build),
  vi(languageCode: 'vi', build: _StringsVi.build);

  const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

  @override
  final String languageCode;
  @override
  final String? scriptCode;
  @override
  final String? countryCode;
  @override
  final TranslationBuilder<AppLocale, Translations> build;

  /// Gets current instance managed by [LocaleSettings].
  Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
  TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

  static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
  Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
  LocaleSettings._() : super(utils: AppLocaleUtils.instance);

  static final instance = LocaleSettings._();

  // static aliases (checkout base methods for documentation)
  static AppLocale get currentLocale => instance.currentLocale;
  static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
  static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) =>
      instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) =>
      instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale useDeviceLocale() => instance.useDeviceLocale();
  @Deprecated('Use [AppLocaleUtils.supportedLocales]')
  static List<Locale> get supportedLocales => instance.supportedLocales;
  @Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]')
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
  static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) =>
      instance.setPluralResolver(
        language: language,
        locale: locale,
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      );
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
  AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

  static final instance = AppLocaleUtils._();

  // static aliases (checkout base methods for documentation)
  static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
  static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) =>
      instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
  static AppLocale findDeviceLocale() => instance.findDeviceLocale();
  static List<Locale> get supportedLocales => instance.supportedLocales;
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.en,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  // Translations
  String hello({required Object name}) => 'Welcome ${name}';
  String get save => 'Save';
  late final _StringsLoginEn login = _StringsLoginEn._(_root);
  String get skip => 'Skip';
  String get onBoardingTitle1 => 'Choose from a wide range of products';
  String get onBoardingTitle2 => 'Accept any payment method';
  String get onBoardingTitle3 => 'Delivery at your doorstep';
  String get onBoardingSubtitle1 => 'Welcome to a World of Limitless Choices - Your Perfect Product Awaits!';
  String get onBoardingSubtitle2 => 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!';
  String get onBoardingSubtitle3 => 'From Our Doorstep to Yours - Swift, Secure, and Contactless Delivery!';
}

// Path: login
class _StringsLoginEn {
  _StringsLoginEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get success => 'Logged in successfully';
  String get fail => 'Logged in failed';
}

// Path: <root>
class _StringsVi implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsVi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.vi,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <vi>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  @override
  late final _StringsVi _root = this; // ignore: unused_field

  // Translations
  @override
  String hello({required Object name}) => 'Chào ${name}';
  @override
  String get save => 'Lưu';
  @override
  late final _StringsLoginVi login = _StringsLoginVi._(_root);
  @override
  String get skip => 'Bỏ qua';
  @override
  String get onBoardingTitle1 => 'Chào mừng bạn!';
  @override
  String get onBoardingTitle2 => 'Chấp nhận mọi phương thức thanh toán!';
  @override
  String get onBoardingTitle3 => 'Nhận hàng tận nơi!';
  @override
  String get onBoardingSubtitle1 => 'Nơi những sản phẩm công nghệ mới nhất đang đợi bạn cho vào giỏ hàng!';
  @override
  String get onBoardingSubtitle2 => 'Từ tiền mặt đến thẻ tín dụng, sự thuận tiện của bạn là ưu tiên hàng đầu của chúng tôi!';
  @override
  String get onBoardingSubtitle3 => 'Nhanh chóng, bảo mật, tiện lợi và chất lượng';
}

// Path: login
class _StringsLoginVi implements _StringsLoginEn {
  _StringsLoginVi._(this._root);

  @override
  final _StringsVi _root; // ignore: unused_field

  // Translations
  @override
  String get success => 'Đăng nhập thành công';
  @override
  String get fail => 'Đăng nhập thất bại';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'hello':
        return ({required Object name}) => 'Welcome ${name}';
      case 'save':
        return 'Save';
      case 'login.success':
        return 'Logged in successfully';
      case 'login.fail':
        return 'Logged in failed';
      case 'skip':
        return 'Skip';
      case 'onBoardingTitle1':
        return 'Choose from a wide range of products';
      case 'onBoardingTitle2':
        return 'Accept any payment method';
      case 'onBoardingTitle3':
        return 'Delivery at your doorstep';
      case 'onBoardingSubtitle1':
        return 'Welcome to a World of Limitless Choices - Your Perfect Product Awaits!';
      case 'onBoardingSubtitle2':
        return 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!';
      case 'onBoardingSubtitle3':
        return 'From Our Doorstep to Yours - Swift, Secure, and Contactless Delivery!';
      default:
        return null;
    }
  }
}

extension on _StringsVi {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'hello':
        return ({required Object name}) => 'Chào ${name}';
      case 'save':
        return 'Lưu';
      case 'login.success':
        return 'Đăng nhập thành công';
      case 'login.fail':
        return 'Đăng nhập thất bại';
      case 'skip':
        return 'Bỏ qua';
      case 'onBoardingTitle1':
        return 'Chào mừng bạn!';
      case 'onBoardingTitle2':
        return 'Chấp nhận mọi phương thức thanh toán!';
      case 'onBoardingTitle3':
        return 'Nhận hàng tận nơi!';
      case 'onBoardingSubtitle1':
        return 'Nơi những sản phẩm công nghệ mới nhất đang đợi bạn cho vào giỏ hàng!';
      case 'onBoardingSubtitle2':
        return 'Từ tiền mặt đến thẻ tín dụng, sự thuận tiện của bạn là ưu tiên hàng đầu của chúng tôi!';
      case 'onBoardingSubtitle3':
        return 'Nhanh chóng, bảo mật, tiện lợi và chất lượng';
      default:
        return null;
    }
  }
}
