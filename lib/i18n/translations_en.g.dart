///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'translations.g.dart';

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
	late final _TranslationsErrorsEn errors = _TranslationsErrorsEn._(_root);
	late final _TranslationsWidgetsEn widgets = _TranslationsWidgetsEn._(_root);
}

// Path: errors
class _TranslationsErrorsEn {
	_TranslationsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsErrorsProductsEn products = _TranslationsErrorsProductsEn._(_root);
}

// Path: widgets
class _TranslationsWidgetsEn {
	_TranslationsWidgetsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsWidgetsButtonEn button = _TranslationsWidgetsButtonEn._(_root);
	late final _TranslationsWidgetsOnboardingEn onboarding = _TranslationsWidgetsOnboardingEn._(_root);
	late final _TranslationsWidgetsLoginEn login = _TranslationsWidgetsLoginEn._(_root);
	late final _TranslationsWidgetsRegisterEn register = _TranslationsWidgetsRegisterEn._(_root);
	late final _TranslationsWidgetsForgotPasswordEn forgotPassword = _TranslationsWidgetsForgotPasswordEn._(_root);
	late final _TranslationsWidgetsNavigationEn navigation = _TranslationsWidgetsNavigationEn._(_root);
}

// Path: errors.products
class _TranslationsErrorsProductsEn {
	_TranslationsErrorsProductsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get e1000 => 'No product found';
}

// Path: widgets.button
class _TranslationsWidgetsButtonEn {
	_TranslationsWidgetsButtonEn._(this._root);

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

// Path: widgets.onboarding
class _TranslationsWidgetsOnboardingEn {
	_TranslationsWidgetsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsWidgetsOnboardingTitleEn title = _TranslationsWidgetsOnboardingTitleEn._(_root);
	late final _TranslationsWidgetsOnboardingSubtitleEn subtitle = _TranslationsWidgetsOnboardingSubtitleEn._(_root);
}

// Path: widgets.login
class _TranslationsWidgetsLoginEn {
	_TranslationsWidgetsLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Welcome Back!';
	String get subtitle => 'Discover Limitless Choices and Unmatched Convenience.';
	late final _TranslationsWidgetsLoginFormEn form = _TranslationsWidgetsLoginFormEn._(_root);
	late final _TranslationsWidgetsLoginPlaceholderEn placeholder = _TranslationsWidgetsLoginPlaceholderEn._(_root);
	late final _TranslationsWidgetsLoginButtonEn button = _TranslationsWidgetsLoginButtonEn._(_root);
	late final _TranslationsWidgetsLoginCommonEn common = _TranslationsWidgetsLoginCommonEn._(_root);
}

// Path: widgets.register
class _TranslationsWidgetsRegisterEn {
	_TranslationsWidgetsRegisterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Register';
	String get subtitle => 'Let’s create your account';
	late final _TranslationsWidgetsRegisterFormEn form = _TranslationsWidgetsRegisterFormEn._(_root);
	late final _TranslationsWidgetsRegisterPlaceholderEn placeholder = _TranslationsWidgetsRegisterPlaceholderEn._(_root);
	late final _TranslationsWidgetsRegisterButtonEn button = _TranslationsWidgetsRegisterButtonEn._(_root);
	late final _TranslationsWidgetsRegisterCommonEn common = _TranslationsWidgetsRegisterCommonEn._(_root);
}

// Path: widgets.forgotPassword
class _TranslationsWidgetsForgotPasswordEn {
	_TranslationsWidgetsForgotPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Forgot Password';
	String get subtitle => 'Don\'t worry! We got your back. Enter your email address to reset your password.';
	late final _TranslationsWidgetsForgotPasswordFormEn form = _TranslationsWidgetsForgotPasswordFormEn._(_root);
	late final _TranslationsWidgetsForgotPasswordPlaceholderEn placeholder = _TranslationsWidgetsForgotPasswordPlaceholderEn._(_root);
	late final _TranslationsWidgetsForgotPasswordButtonEn button = _TranslationsWidgetsForgotPasswordButtonEn._(_root);
	late final _TranslationsWidgetsForgotPasswordCommonEn common = _TranslationsWidgetsForgotPasswordCommonEn._(_root);
}

// Path: widgets.navigation
class _TranslationsWidgetsNavigationEn {
	_TranslationsWidgetsNavigationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get explore => 'Explore';
	String get wishlist => 'Wishlist';
	String get cart => 'Cart';
	String get profile => 'Profile';
}

// Path: widgets.onboarding.title
class _TranslationsWidgetsOnboardingTitleEn {
	_TranslationsWidgetsOnboardingTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get t1 => 'Choose from a wide range of e-books';
	String get t2 => 'Accept any payment method';
	String get t3 => 'No wastage of time';
}

// Path: widgets.onboarding.subtitle
class _TranslationsWidgetsOnboardingSubtitleEn {
	_TranslationsWidgetsOnboardingSubtitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get st1 => 'Welcome to a World of Limitless Choices - Your Perfect Product Awaits!';
	String get st2 => 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!';
	String get st3 => 'Receive your e-books as soon as you complete payment - No Waiting, No Hassle!';
}

// Path: widgets.login.form
class _TranslationsWidgetsLoginFormEn {
	_TranslationsWidgetsLoginFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email';
	String get password => 'Password';
}

// Path: widgets.login.placeholder
class _TranslationsWidgetsLoginPlaceholderEn {
	_TranslationsWidgetsLoginPlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Enter your email';
	String get password => 'Enter your password';
}

// Path: widgets.login.button
class _TranslationsWidgetsLoginButtonEn {
	_TranslationsWidgetsLoginButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signIn => 'Sign In';
	String get createAccount => 'Create Account';
}

// Path: widgets.login.common
class _TranslationsWidgetsLoginCommonEn {
	_TranslationsWidgetsLoginCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get orSignInWith => 'or sign in with';
	String get privacyPolicy => 'Privacy Policy';
	String get termsOfUse => 'Terms of use';
	String get rememberMe => 'Remember me';
	String get forgotPassword => 'Forgot password';
}

// Path: widgets.register.form
class _TranslationsWidgetsRegisterFormEn {
	_TranslationsWidgetsRegisterFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fullName => 'Full Name';
	String get email => 'Email';
	String get username => 'Username';
	String get password => 'Password';
	String get confirmPassword => 'Confirm Password';
	String get phoneNo => 'Phone Number';
}

// Path: widgets.register.placeholder
class _TranslationsWidgetsRegisterPlaceholderEn {
	_TranslationsWidgetsRegisterPlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fullName => 'Enter your full name';
	String get username => 'Enter your username';
	String get email => 'Enter your email';
	String get password => 'Enter your password';
	String get confirmPassword => 'Confirm your password';
	String get phoneNo => 'Enter your phone number';
}

// Path: widgets.register.button
class _TranslationsWidgetsRegisterButtonEn {
	_TranslationsWidgetsRegisterButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get createAccount => 'Create Account';
}

// Path: widgets.register.common
class _TranslationsWidgetsRegisterCommonEn {
	_TranslationsWidgetsRegisterCommonEn._(this._root);

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

// Path: widgets.forgotPassword.form
class _TranslationsWidgetsForgotPasswordFormEn {
	_TranslationsWidgetsForgotPasswordFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email';
}

// Path: widgets.forgotPassword.placeholder
class _TranslationsWidgetsForgotPasswordPlaceholderEn {
	_TranslationsWidgetsForgotPasswordPlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Enter your email';
}

// Path: widgets.forgotPassword.button
class _TranslationsWidgetsForgotPasswordButtonEn {
	_TranslationsWidgetsForgotPasswordButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get resetPassword => 'Reset Password';
}

// Path: widgets.forgotPassword.common
class _TranslationsWidgetsForgotPasswordCommonEn {
	_TranslationsWidgetsForgotPasswordCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get backToLogin => 'Back to login';
	String get success => 'Reset Password Success';
	String get successText => 'We have sent a password reset link to your email address. Please check your email and follow the instructions to reset your password.';
}
