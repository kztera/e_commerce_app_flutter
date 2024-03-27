/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 122 (61 per locale)
///
/// Built on 2024-03-27 at 17:07 UTC

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
	late final _StringsRegisterEn register = _StringsRegisterEn._(_root);
	late final _StringsForgotPasswordEn forgotPassword = _StringsForgotPasswordEn._(_root);
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
	String get resend => 'Resend';
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
	late final _StringsLoginButtonEn button = _StringsLoginButtonEn._(_root);
	late final _StringsLoginCommonEn common = _StringsLoginCommonEn._(_root);
}

// Path: register
class _StringsRegisterEn {
	_StringsRegisterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Register';
	String get subtitle => 'Let’s create your account';
	late final _StringsRegisterFormEn form = _StringsRegisterFormEn._(_root);
	late final _StringsRegisterPlaceholderEn placeholder = _StringsRegisterPlaceholderEn._(_root);
	late final _StringsRegisterButtonEn button = _StringsRegisterButtonEn._(_root);
	late final _StringsRegisterCommonEn common = _StringsRegisterCommonEn._(_root);
}

// Path: forgotPassword
class _StringsForgotPasswordEn {
	_StringsForgotPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Forgot Password';
	String get subtitle => 'Don\'t worry! We got your back. Enter your email address to reset your password.';
	late final _StringsForgotPasswordFormEn form = _StringsForgotPasswordFormEn._(_root);
	late final _StringsForgotPasswordPlaceholderEn placeholder = _StringsForgotPasswordPlaceholderEn._(_root);
	late final _StringsForgotPasswordButtonEn button = _StringsForgotPasswordButtonEn._(_root);
	late final _StringsForgotPasswordCommonEn common = _StringsForgotPasswordCommonEn._(_root);
}

// Path: onboarding.title
class _StringsOnboardingTitleEn {
	_StringsOnboardingTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get t1 => 'Choose from a wide range of e-books';
	String get t2 => 'Accept any payment method';
	String get t3 => 'No wastage of time';
}

// Path: onboarding.subtitle
class _StringsOnboardingSubtitleEn {
	_StringsOnboardingSubtitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get st1 => 'Welcome to a World of Limitless Choices - Your Perfect Product Awaits!';
	String get st2 => 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!';
	String get st3 => 'Receive your e-books as soon as you complete payment - No Waiting, No Hassle!';
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

// Path: login.button
class _StringsLoginButtonEn {
	_StringsLoginButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signIn => 'Sign In';
	String get createAccount => 'Create Account';
}

// Path: login.common
class _StringsLoginCommonEn {
	_StringsLoginCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get orSignInWith => 'or sign in with';
	String get privacyPolicy => 'Privacy Policy';
	String get termsOfUse => 'Terms of use';
	String get rememberMe => 'Remember me';
	String get forgotPassword => 'Forgot password';
}

// Path: register.form
class _StringsRegisterFormEn {
	_StringsRegisterFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fullName => 'Full Name';
	String get email => 'Email';
	String get username => 'Username';
	String get password => 'Password';
	String get confirmPassword => 'Confirm Password';
	String get phoneNo => 'Phone Number';
}

// Path: register.placeholder
class _StringsRegisterPlaceholderEn {
	_StringsRegisterPlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fullName => 'Enter your full name';
	String get username => 'Enter your username';
	String get email => 'Enter your email';
	String get password => 'Enter your password';
	String get confirmPassword => 'Confirm your password';
	String get phoneNo => 'Enter your phone number';
}

// Path: register.button
class _StringsRegisterButtonEn {
	_StringsRegisterButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get createAccount => 'Create Account';
}

// Path: register.common
class _StringsRegisterCommonEn {
	_StringsRegisterCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get privacyPolicy => 'Privacy Policy';
	String get termsOfUse => 'Terms of use';
	String get orSignUpWith => 'or sign up with';
	String get alreadyHaveAccount => 'Already have an account?';
	String get signIn => 'Sign In';
	String get iAgreeTo => 'I agree to the ';
	String get minChar => 'Minimum 8 characters';
	String get atLeastOne => 'At least one special character and one letter';
	String get verifyEmail => 'Verify your email address!';
	String get verifyEmailText => 'We have sent a verification email to your email address. Please verify your email address to continue.';
	String get successVerifyEmail => 'Your account verified successfully!';
	String get successVerifyEmailText => 'Welcome to Your Ultimate Ebook Destination! Your account is created. Unlease the power of limitless choices and unmatched convenience!';
}

// Path: forgotPassword.form
class _StringsForgotPasswordFormEn {
	_StringsForgotPasswordFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email';
}

// Path: forgotPassword.placeholder
class _StringsForgotPasswordPlaceholderEn {
	_StringsForgotPasswordPlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Enter your email';
}

// Path: forgotPassword.button
class _StringsForgotPasswordButtonEn {
	_StringsForgotPasswordButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get resetPassword => 'Reset Password';
}

// Path: forgotPassword.common
class _StringsForgotPasswordCommonEn {
	_StringsForgotPasswordCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get backToLogin => 'Back to login';
	String get success => 'Reset Password Success';
	String get successText => 'We have sent a password reset link to your email address. Please check your email and follow the instructions to reset your password.';
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
	@override late final _StringsRegisterVi register = _StringsRegisterVi._(_root);
	@override late final _StringsForgotPasswordVi forgotPassword = _StringsForgotPasswordVi._(_root);
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
	@override String get resend => 'Gửi lại';
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
	@override String get subtitle => 'Đăng nhập và mở ra thế giới sách không giới hạn!';
	@override late final _StringsLoginFormVi form = _StringsLoginFormVi._(_root);
	@override late final _StringsLoginPlaceholderVi placeholder = _StringsLoginPlaceholderVi._(_root);
	@override late final _StringsLoginButtonVi button = _StringsLoginButtonVi._(_root);
	@override late final _StringsLoginCommonVi common = _StringsLoginCommonVi._(_root);
}

// Path: register
class _StringsRegisterVi implements _StringsRegisterEn {
	_StringsRegisterVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đăng ký';
	@override String get subtitle => 'Tạo tài khoản của bạn để có thể bắt đầu mua sắm!';
	@override late final _StringsRegisterFormVi form = _StringsRegisterFormVi._(_root);
	@override late final _StringsRegisterPlaceholderVi placeholder = _StringsRegisterPlaceholderVi._(_root);
	@override late final _StringsRegisterButtonVi button = _StringsRegisterButtonVi._(_root);
	@override late final _StringsRegisterCommonVi common = _StringsRegisterCommonVi._(_root);
}

// Path: forgotPassword
class _StringsForgotPasswordVi implements _StringsForgotPasswordEn {
	_StringsForgotPasswordVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quên mật khẩu';
	@override String get subtitle => 'Đừng lo lắng, ai cũng có thể quên mật khẩu! Nhập email và chúng tôi sẽ gửi cho bạn mã xác nhận để đặt lại mật khẩu của bạn.';
	@override late final _StringsForgotPasswordFormVi form = _StringsForgotPasswordFormVi._(_root);
	@override late final _StringsForgotPasswordPlaceholderVi placeholder = _StringsForgotPasswordPlaceholderVi._(_root);
	@override late final _StringsForgotPasswordButtonVi button = _StringsForgotPasswordButtonVi._(_root);
	@override late final _StringsForgotPasswordCommonVi common = _StringsForgotPasswordCommonVi._(_root);
}

// Path: onboarding.title
class _StringsOnboardingTitleVi implements _StringsOnboardingTitleEn {
	_StringsOnboardingTitleVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get t1 => 'Vô hạn lựa chọn';
	@override String get t2 => 'Chấp nhận mọi phương thức thanh toán';
	@override String get t3 => 'Không cần chờ đợi';
}

// Path: onboarding.subtitle
class _StringsOnboardingSubtitleVi implements _StringsOnboardingSubtitleEn {
	_StringsOnboardingSubtitleVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get st1 => 'Chào mừng bạn tới với 3Z - Nơi những cuốn sách hay nhất đang đợi bạn cho vào giỏ hàng!';
	@override String get st2 => 'Từ tiền mặt đến thẻ tín dụng, sự thuận tiện của bạn là ưu tiên hàng đầu của chúng tôi';
	@override String get st3 => 'Nhận được sách ngay lập tức sau khi thanh toán!';
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

// Path: login.button
class _StringsLoginButtonVi implements _StringsLoginButtonEn {
	_StringsLoginButtonVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get signIn => 'Đăng nhập';
	@override String get createAccount => 'Tạo tài khoản';
}

// Path: login.common
class _StringsLoginCommonVi implements _StringsLoginCommonEn {
	_StringsLoginCommonVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get orSignInWith => 'hoặc đăng nhập với';
	@override String get privacyPolicy => 'Chính sách bảo mật';
	@override String get termsOfUse => 'Điều khoản dịch vụ';
	@override String get rememberMe => 'Ghi nhớ đăng nhập';
	@override String get forgotPassword => 'Quên mật khẩu';
}

// Path: register.form
class _StringsRegisterFormVi implements _StringsRegisterFormEn {
	_StringsRegisterFormVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get fullName => 'Họ và tên';
	@override String get username => 'Tên tài khoản';
	@override String get email => 'Email';
	@override String get password => 'Mật khẩu';
	@override String get confirmPassword => 'Xác nhận mật khẩu';
	@override String get phoneNo => 'Số điện thoại';
}

// Path: register.placeholder
class _StringsRegisterPlaceholderVi implements _StringsRegisterPlaceholderEn {
	_StringsRegisterPlaceholderVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get fullName => 'Nhập họ và tên của bạn';
	@override String get username => 'Nhập tên tài khoản của bạn';
	@override String get email => 'Nhập email của bạn';
	@override String get password => 'Nhập mật khẩu của bạn';
	@override String get confirmPassword => 'Xác nhận mật khẩu của bạn';
	@override String get phoneNo => 'Nhập số điện thoại của bạn';
}

// Path: register.button
class _StringsRegisterButtonVi implements _StringsRegisterButtonEn {
	_StringsRegisterButtonVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get createAccount => 'Tạo tài khoản';
}

// Path: register.common
class _StringsRegisterCommonVi implements _StringsRegisterCommonEn {
	_StringsRegisterCommonVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get privacyPolicy => 'Chính sách bảo mật';
	@override String get termsOfUse => 'Điều khoản dịch vụ';
	@override String get orSignUpWith => 'hoặc đăng ký với';
	@override String get alreadyHaveAccount => 'Đã có tài khoản?';
	@override String get signIn => 'Đăng nhập';
	@override String get iAgreeTo => 'Tôi đã đọc và đồng ý với ';
	@override String get minChar => 'Có ít nhất 8 ký tự';
	@override String get atLeastOne => 'Có ít nhất 1 chữ cái và 1 kí tự đặc biệt';
	@override String get verifyEmail => 'Xác thực email';
	@override String get verifyEmailText => 'Chúng tôi đã gửi một email đến địa chỉ email của bạn. Vui lòng kiểm tra hộp thư đến và lấy mã xác thực để hoàn tất quá trình đăng ký.';
	@override String get successVerifyEmail => 'Xác thực email thành công';
	@override String get successVerifyEmailText => 'Tài khoản của bạn đã được xác thực. Trải nghiệm mua sách tuyệt vời tại 3Z ngay bây giờ!';
}

// Path: forgotPassword.form
class _StringsForgotPasswordFormVi implements _StringsForgotPasswordFormEn {
	_StringsForgotPasswordFormVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Email';
}

// Path: forgotPassword.placeholder
class _StringsForgotPasswordPlaceholderVi implements _StringsForgotPasswordPlaceholderEn {
	_StringsForgotPasswordPlaceholderVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Nhập email của bạn';
}

// Path: forgotPassword.button
class _StringsForgotPasswordButtonVi implements _StringsForgotPasswordButtonEn {
	_StringsForgotPasswordButtonVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get resetPassword => 'Đặt lại mật khẩu';
}

// Path: forgotPassword.common
class _StringsForgotPasswordCommonVi implements _StringsForgotPasswordCommonEn {
	_StringsForgotPasswordCommonVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get backToLogin => 'Quay lại đăng nhập';
	@override String get success => 'Đặt lại mật khẩu thành công';
	@override String get successText => 'Một email đã được gửi đến email của bạn. Vui lòng kiểm tra và làm theo hướng dẫn để đặt lại mật khẩu của bạn.';
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
			case 'button.resend': return 'Resend';
			case 'onboarding.title.t1': return 'Choose from a wide range of e-books';
			case 'onboarding.title.t2': return 'Accept any payment method';
			case 'onboarding.title.t3': return 'No wastage of time';
			case 'onboarding.subtitle.st1': return 'Welcome to a World of Limitless Choices - Your Perfect Product Awaits!';
			case 'onboarding.subtitle.st2': return 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!';
			case 'onboarding.subtitle.st3': return 'Receive your e-books as soon as you complete payment - No Waiting, No Hassle!';
			case 'login.title': return 'Welcome Back!';
			case 'login.subtitle': return 'Discover Limitless Choices and Unmatched Convenience.';
			case 'login.form.email': return 'Email';
			case 'login.form.password': return 'Password';
			case 'login.placeholder.email': return 'Enter your email';
			case 'login.placeholder.password': return 'Enter your password';
			case 'login.button.signIn': return 'Sign In';
			case 'login.button.createAccount': return 'Create Account';
			case 'login.common.orSignInWith': return 'or sign in with';
			case 'login.common.privacyPolicy': return 'Privacy Policy';
			case 'login.common.termsOfUse': return 'Terms of use';
			case 'login.common.rememberMe': return 'Remember me';
			case 'login.common.forgotPassword': return 'Forgot password';
			case 'register.title': return 'Register';
			case 'register.subtitle': return 'Let’s create your account';
			case 'register.form.fullName': return 'Full Name';
			case 'register.form.email': return 'Email';
			case 'register.form.username': return 'Username';
			case 'register.form.password': return 'Password';
			case 'register.form.confirmPassword': return 'Confirm Password';
			case 'register.form.phoneNo': return 'Phone Number';
			case 'register.placeholder.fullName': return 'Enter your full name';
			case 'register.placeholder.username': return 'Enter your username';
			case 'register.placeholder.email': return 'Enter your email';
			case 'register.placeholder.password': return 'Enter your password';
			case 'register.placeholder.confirmPassword': return 'Confirm your password';
			case 'register.placeholder.phoneNo': return 'Enter your phone number';
			case 'register.button.createAccount': return 'Create Account';
			case 'register.common.privacyPolicy': return 'Privacy Policy';
			case 'register.common.termsOfUse': return 'Terms of use';
			case 'register.common.orSignUpWith': return 'or sign up with';
			case 'register.common.alreadyHaveAccount': return 'Already have an account?';
			case 'register.common.signIn': return 'Sign In';
			case 'register.common.iAgreeTo': return 'I agree to the ';
			case 'register.common.minChar': return 'Minimum 8 characters';
			case 'register.common.atLeastOne': return 'At least one special character and one letter';
			case 'register.common.verifyEmail': return 'Verify your email address!';
			case 'register.common.verifyEmailText': return 'We have sent a verification email to your email address. Please verify your email address to continue.';
			case 'register.common.successVerifyEmail': return 'Your account verified successfully!';
			case 'register.common.successVerifyEmailText': return 'Welcome to Your Ultimate Ebook Destination! Your account is created. Unlease the power of limitless choices and unmatched convenience!';
			case 'forgotPassword.title': return 'Forgot Password';
			case 'forgotPassword.subtitle': return 'Don\'t worry! We got your back. Enter your email address to reset your password.';
			case 'forgotPassword.form.email': return 'Email';
			case 'forgotPassword.placeholder.email': return 'Enter your email';
			case 'forgotPassword.button.resetPassword': return 'Reset Password';
			case 'forgotPassword.common.backToLogin': return 'Back to login';
			case 'forgotPassword.common.success': return 'Reset Password Success';
			case 'forgotPassword.common.successText': return 'We have sent a password reset link to your email address. Please check your email and follow the instructions to reset your password.';
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
			case 'button.resend': return 'Gửi lại';
			case 'onboarding.title.t1': return 'Vô hạn lựa chọn';
			case 'onboarding.title.t2': return 'Chấp nhận mọi phương thức thanh toán';
			case 'onboarding.title.t3': return 'Không cần chờ đợi';
			case 'onboarding.subtitle.st1': return 'Chào mừng bạn tới với 3Z - Nơi những cuốn sách hay nhất đang đợi bạn cho vào giỏ hàng!';
			case 'onboarding.subtitle.st2': return 'Từ tiền mặt đến thẻ tín dụng, sự thuận tiện của bạn là ưu tiên hàng đầu của chúng tôi';
			case 'onboarding.subtitle.st3': return 'Nhận được sách ngay lập tức sau khi thanh toán!';
			case 'login.title': return 'Chào mừng trở lại';
			case 'login.subtitle': return 'Đăng nhập và mở ra thế giới sách không giới hạn!';
			case 'login.form.email': return 'Email';
			case 'login.form.password': return 'Mật khẩu';
			case 'login.placeholder.email': return 'Nhập email tài khoản';
			case 'login.placeholder.password': return 'Nhập mật khẩu';
			case 'login.button.signIn': return 'Đăng nhập';
			case 'login.button.createAccount': return 'Tạo tài khoản';
			case 'login.common.orSignInWith': return 'hoặc đăng nhập với';
			case 'login.common.privacyPolicy': return 'Chính sách bảo mật';
			case 'login.common.termsOfUse': return 'Điều khoản dịch vụ';
			case 'login.common.rememberMe': return 'Ghi nhớ đăng nhập';
			case 'login.common.forgotPassword': return 'Quên mật khẩu';
			case 'register.title': return 'Đăng ký';
			case 'register.subtitle': return 'Tạo tài khoản của bạn để có thể bắt đầu mua sắm!';
			case 'register.form.fullName': return 'Họ và tên';
			case 'register.form.username': return 'Tên tài khoản';
			case 'register.form.email': return 'Email';
			case 'register.form.password': return 'Mật khẩu';
			case 'register.form.confirmPassword': return 'Xác nhận mật khẩu';
			case 'register.form.phoneNo': return 'Số điện thoại';
			case 'register.placeholder.fullName': return 'Nhập họ và tên của bạn';
			case 'register.placeholder.username': return 'Nhập tên tài khoản của bạn';
			case 'register.placeholder.email': return 'Nhập email của bạn';
			case 'register.placeholder.password': return 'Nhập mật khẩu của bạn';
			case 'register.placeholder.confirmPassword': return 'Xác nhận mật khẩu của bạn';
			case 'register.placeholder.phoneNo': return 'Nhập số điện thoại của bạn';
			case 'register.button.createAccount': return 'Tạo tài khoản';
			case 'register.common.privacyPolicy': return 'Chính sách bảo mật';
			case 'register.common.termsOfUse': return 'Điều khoản dịch vụ';
			case 'register.common.orSignUpWith': return 'hoặc đăng ký với';
			case 'register.common.alreadyHaveAccount': return 'Đã có tài khoản?';
			case 'register.common.signIn': return 'Đăng nhập';
			case 'register.common.iAgreeTo': return 'Tôi đã đọc và đồng ý với ';
			case 'register.common.minChar': return 'Có ít nhất 8 ký tự';
			case 'register.common.atLeastOne': return 'Có ít nhất 1 chữ cái và 1 kí tự đặc biệt';
			case 'register.common.verifyEmail': return 'Xác thực email';
			case 'register.common.verifyEmailText': return 'Chúng tôi đã gửi một email đến địa chỉ email của bạn. Vui lòng kiểm tra hộp thư đến và lấy mã xác thực để hoàn tất quá trình đăng ký.';
			case 'register.common.successVerifyEmail': return 'Xác thực email thành công';
			case 'register.common.successVerifyEmailText': return 'Tài khoản của bạn đã được xác thực. Trải nghiệm mua sách tuyệt vời tại 3Z ngay bây giờ!';
			case 'forgotPassword.title': return 'Quên mật khẩu';
			case 'forgotPassword.subtitle': return 'Đừng lo lắng, ai cũng có thể quên mật khẩu! Nhập email và chúng tôi sẽ gửi cho bạn mã xác nhận để đặt lại mật khẩu của bạn.';
			case 'forgotPassword.form.email': return 'Email';
			case 'forgotPassword.placeholder.email': return 'Nhập email của bạn';
			case 'forgotPassword.button.resetPassword': return 'Đặt lại mật khẩu';
			case 'forgotPassword.common.backToLogin': return 'Quay lại đăng nhập';
			case 'forgotPassword.common.success': return 'Đặt lại mật khẩu thành công';
			case 'forgotPassword.common.successText': return 'Một email đã được gửi đến email của bạn. Vui lòng kiểm tra và làm theo hướng dẫn để đặt lại mật khẩu của bạn.';
			default: return null;
		}
	}
}
