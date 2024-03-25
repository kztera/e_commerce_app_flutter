/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 36 (18 per locale)
///
/// Built on 2024-03-25 at 02:34 UTC

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

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

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
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
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
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
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
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsButtonEn button = _StringsButtonEn._(_root);
	late final _StringsOnboardingEn onboarding = _StringsOnboardingEn._(_root);
	late final _StringsLoginEn login = _StringsLoginEn._(_root);
}

// Path: button
class _StringsButtonEn {
	_StringsButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get skip => 'Skip';
	String get and => 'and';
	String get done => 'Done';
	String get submit => 'Submit';
	String get appName => '3Z Store';
	String get btcontinue => 'Continue';
}

// Path: onboarding
class _StringsOnboardingEn {
	_StringsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsOnboardingTitleEn title = _StringsOnboardingTitleEn._(_root);
	late final _StringsOnboardingSubtitleEn subtitle = _StringsOnboardingSubtitleEn._(_root);
}

// Path: login
class _StringsLoginEn {
	_StringsLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Welcome Back!';
	String get subtitle => 'Discover Limitless Choices and Unmatched Convenience.';
	late final _StringsLoginFormEn form = _StringsLoginFormEn._(_root);
	late final _StringsLoginPlaceholderEn placeholder = _StringsLoginPlaceholderEn._(_root);
}

// Path: onboarding.title
class _StringsOnboardingTitleEn {
	_StringsOnboardingTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get t1 => 'Choose from a wide range of products';
	String get t2 => 'Accept any payment method';
	String get t3 => 'Delivery at your doorstep';
}

// Path: onboarding.subtitle
class _StringsOnboardingSubtitleEn {
	_StringsOnboardingSubtitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get st1 => 'Welcome to a World of Limitless Choices - Your Perfect Product Awaits!';
	String get st2 => 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!';
	String get st3 => 'From Our Doorstep to Yours - Swift, Secure, and Contactless Delivery!';
}

// Path: login.form
class _StringsLoginFormEn {
	_StringsLoginFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email';
	String get password => 'Password';
}

// Path: login.placeholder
class _StringsLoginPlaceholderEn {
	_StringsLoginPlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Enter your email';
	String get password => 'Enter your password';
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
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsVi _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsButtonVi button = _StringsButtonVi._(_root);
	@override late final _StringsOnboardingVi onboarding = _StringsOnboardingVi._(_root);
	@override late final _StringsLoginVi login = _StringsLoginVi._(_root);
}

// Path: button
class _StringsButtonVi implements _StringsButtonEn {
	_StringsButtonVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get skip => 'Bỏ qua';
	@override String get and => 'và';
	@override String get done => 'Xong';
	@override String get submit => 'Xác nhận';
	@override String get appName => '3Z Store';
	@override String get btcontinue => 'Tiếp tục';
}

// Path: onboarding
class _StringsOnboardingVi implements _StringsOnboardingEn {
	_StringsOnboardingVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsOnboardingTitleVi title = _StringsOnboardingTitleVi._(_root);
	@override late final _StringsOnboardingSubtitleVi subtitle = _StringsOnboardingSubtitleVi._(_root);
}

// Path: login
class _StringsLoginVi implements _StringsLoginEn {
	_StringsLoginVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chào mừng trở lại';
	@override String get subtitle => 'Đăng nhập và mở ra cơ hội mua sớm không giới hạn!';
	@override late final _StringsLoginFormVi form = _StringsLoginFormVi._(_root);
	@override late final _StringsLoginPlaceholderVi placeholder = _StringsLoginPlaceholderVi._(_root);
}

// Path: onboarding.title
class _StringsOnboardingTitleVi implements _StringsOnboardingTitleEn {
	_StringsOnboardingTitleVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get t1 => 'Vô hạn lựa chọn';
	@override String get t2 => 'Chấp nhận mọi phương thức thanh toán';
	@override String get t3 => 'Giao hàng tận nơi';
}

// Path: onboarding.subtitle
class _StringsOnboardingSubtitleVi implements _StringsOnboardingSubtitleEn {
	_StringsOnboardingSubtitleVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get st1 => 'Chào mừng bạn tới với 3Z - Nơi những sản phẩm công nghệ mới nhất đang đợi bạn cho vào giỏ hàng!';
	@override String get st2 => 'Từ tiền mặt đến thẻ tín dụng, sự thuận tiện của bạn là ưu tiên hàng đầu của chúng tôi';
	@override String get st3 => 'Nhanh chóng, bảo mật, tiện lợi và chất lượng';
}

// Path: login.form
class _StringsLoginFormVi implements _StringsLoginFormEn {
	_StringsLoginFormVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Email';
	@override String get password => 'Mật khẩu';
}

// Path: login.placeholder
class _StringsLoginPlaceholderVi implements _StringsLoginPlaceholderEn {
	_StringsLoginPlaceholderVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Nhập email tài khoản';
	@override String get password => 'Nhập mật khẩu';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'button.skip': return 'Skip';
			case 'button.and': return 'and';
			case 'button.done': return 'Done';
			case 'button.submit': return 'Submit';
			case 'button.appName': return '3Z Store';
			case 'button.btcontinue': return 'Continue';
			case 'onboarding.title.t1': return 'Choose from a wide range of products';
			case 'onboarding.title.t2': return 'Accept any payment method';
			case 'onboarding.title.t3': return 'Delivery at your doorstep';
			case 'onboarding.subtitle.st1': return 'Welcome to a World of Limitless Choices - Your Perfect Product Awaits!';
			case 'onboarding.subtitle.st2': return 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!';
			case 'onboarding.subtitle.st3': return 'From Our Doorstep to Yours - Swift, Secure, and Contactless Delivery!';
			case 'login.title': return 'Welcome Back!';
			case 'login.subtitle': return 'Discover Limitless Choices and Unmatched Convenience.';
			case 'login.form.email': return 'Email';
			case 'login.form.password': return 'Password';
			case 'login.placeholder.email': return 'Enter your email';
			case 'login.placeholder.password': return 'Enter your password';
			default: return null;
		}
	}
}

extension on _StringsVi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'button.skip': return 'Bỏ qua';
			case 'button.and': return 'và';
			case 'button.done': return 'Xong';
			case 'button.submit': return 'Xác nhận';
			case 'button.appName': return '3Z Store';
			case 'button.btcontinue': return 'Tiếp tục';
			case 'onboarding.title.t1': return 'Vô hạn lựa chọn';
			case 'onboarding.title.t2': return 'Chấp nhận mọi phương thức thanh toán';
			case 'onboarding.title.t3': return 'Giao hàng tận nơi';
			case 'onboarding.subtitle.st1': return 'Chào mừng bạn tới với 3Z - Nơi những sản phẩm công nghệ mới nhất đang đợi bạn cho vào giỏ hàng!';
			case 'onboarding.subtitle.st2': return 'Từ tiền mặt đến thẻ tín dụng, sự thuận tiện của bạn là ưu tiên hàng đầu của chúng tôi';
			case 'onboarding.subtitle.st3': return 'Nhanh chóng, bảo mật, tiện lợi và chất lượng';
			case 'login.title': return 'Chào mừng trở lại';
			case 'login.subtitle': return 'Đăng nhập và mở ra cơ hội mua sớm không giới hạn!';
			case 'login.form.email': return 'Email';
			case 'login.form.password': return 'Mật khẩu';
			case 'login.placeholder.email': return 'Nhập email tài khoản';
			case 'login.placeholder.password': return 'Nhập mật khẩu';
			default: return null;
		}
	}
}
