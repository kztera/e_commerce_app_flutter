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
	late final _TranslationsButtonsEn buttons = _TranslationsButtonsEn._(_root);
	late final _TranslationsCommonEn common = _TranslationsCommonEn._(_root);
	late final _TranslationsErrorsEn errors = _TranslationsErrorsEn._(_root);
	late final _TranslationsMessagesEn messages = _TranslationsMessagesEn._(_root);
	late final _TranslationsNavigationEn navigation = _TranslationsNavigationEn._(_root);
	late final _TranslationsScreensEn screens = _TranslationsScreensEn._(_root);
	late final _TranslationsSettingEn setting = _TranslationsSettingEn._(_root);
}

// Path: buttons
class _TranslationsButtonsEn {
	_TranslationsButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get skip => 'Skip';
	String get and => 'and';
	String get done => 'Done';
	String get submit => 'Submit';
	String get appName => '3Z Store';
	String get btcontinue => 'Continue';
	String get resend => 'Resend';
	String get cancel => 'Cancel';
	String get create => 'Create';
	String get update => 'Update';
	String get edit => 'Edit';
	String get delete => 'Delete';
	String get detail => 'Detail';
	String get viewAll => 'View all';
}

// Path: common
class _TranslationsCommonEn {
	_TranslationsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get copyright => '© Copyright {year} - Nguyen Khoa. All Rights Reserved. Version {version}';
	String get filter => 'Filter';
}

// Path: errors
class _TranslationsErrorsEn {
	_TranslationsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsErrorsProductsEn products = _TranslationsErrorsProductsEn._(_root);
}

// Path: messages
class _TranslationsMessagesEn {
	_TranslationsMessagesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsMessagesSnackbarEn snackbar = _TranslationsMessagesSnackbarEn._(_root);
}

// Path: navigation
class _TranslationsNavigationEn {
	_TranslationsNavigationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get explore => 'Explore';
	String get wishlist => 'Wishlist';
	String get cart => 'Cart';
	String get profile => 'Profile';
}

// Path: screens
class _TranslationsScreensEn {
	_TranslationsScreensEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsScreensOnboardingEn onboarding = _TranslationsScreensOnboardingEn._(_root);
	late final _TranslationsScreensLoginEn login = _TranslationsScreensLoginEn._(_root);
	late final _TranslationsScreensRegisterEn register = _TranslationsScreensRegisterEn._(_root);
	late final _TranslationsScreensForgotPasswordEn forgotPassword = _TranslationsScreensForgotPasswordEn._(_root);
	late final _TranslationsScreensHomeEn home = _TranslationsScreensHomeEn._(_root);
	late final _TranslationsScreensExploreEn explore = _TranslationsScreensExploreEn._(_root);
}

// Path: setting
class _TranslationsSettingEn {
	_TranslationsSettingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	late final _TranslationsSettingAccountEn account = _TranslationsSettingAccountEn._(_root);
	late final _TranslationsSettingSettingsEn settings = _TranslationsSettingSettingsEn._(_root);
}

// Path: errors.products
class _TranslationsErrorsProductsEn {
	_TranslationsErrorsProductsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get e1000 => 'No product found';
}

// Path: messages.snackbar
class _TranslationsMessagesSnackbarEn {
	_TranslationsMessagesSnackbarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get loginSuccess => 'Login successful';
}

// Path: screens.onboarding
class _TranslationsScreensOnboardingEn {
	_TranslationsScreensOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsScreensOnboardingTitleEn title = _TranslationsScreensOnboardingTitleEn._(_root);
	late final _TranslationsScreensOnboardingSubtitleEn subtitle = _TranslationsScreensOnboardingSubtitleEn._(_root);
}

// Path: screens.login
class _TranslationsScreensLoginEn {
	_TranslationsScreensLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Welcome Back!';
	String get subtitle => 'Discover Limitless Choices and Unmatched Convenience.';
	late final _TranslationsScreensLoginFormEn form = _TranslationsScreensLoginFormEn._(_root);
	late final _TranslationsScreensLoginPlaceholderEn placeholder = _TranslationsScreensLoginPlaceholderEn._(_root);
	late final _TranslationsScreensLoginButtonEn button = _TranslationsScreensLoginButtonEn._(_root);
	late final _TranslationsScreensLoginTextEn text = _TranslationsScreensLoginTextEn._(_root);
}

// Path: screens.register
class _TranslationsScreensRegisterEn {
	_TranslationsScreensRegisterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Register';
	String get subtitle => 'Let\'s create your account';
	late final _TranslationsScreensRegisterFormEn form = _TranslationsScreensRegisterFormEn._(_root);
	late final _TranslationsScreensRegisterPlaceholderEn placeholder = _TranslationsScreensRegisterPlaceholderEn._(_root);
	late final _TranslationsScreensRegisterButtonEn button = _TranslationsScreensRegisterButtonEn._(_root);
	late final _TranslationsScreensRegisterTextEn text = _TranslationsScreensRegisterTextEn._(_root);
}

// Path: screens.forgotPassword
class _TranslationsScreensForgotPasswordEn {
	_TranslationsScreensForgotPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Forgot Password';
	String get subtitle => 'Don\'t worry! We got your back. Enter your email address to reset your password.';
	late final _TranslationsScreensForgotPasswordFormEn form = _TranslationsScreensForgotPasswordFormEn._(_root);
	late final _TranslationsScreensForgotPasswordPlaceholderEn placeholder = _TranslationsScreensForgotPasswordPlaceholderEn._(_root);
	late final _TranslationsScreensForgotPasswordButtonEn button = _TranslationsScreensForgotPasswordButtonEn._(_root);
	late final _TranslationsScreensForgotPasswordTextEn text = _TranslationsScreensForgotPasswordTextEn._(_root);
}

// Path: screens.home
class _TranslationsScreensHomeEn {
	_TranslationsScreensHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsScreensHomeAppbarEn appbar = _TranslationsScreensHomeAppbarEn._(_root);
	String get search => 'Search for name, author, genre, etc.';
	String get category => 'Popular Categories';
	String get popularProduct => 'Popular books';
}

// Path: screens.explore
class _TranslationsScreensExploreEn {
	_TranslationsScreensExploreEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsScreensExploreAppbarEn appbar = _TranslationsScreensExploreAppbarEn._(_root);
	String get search => 'Search for name, author, genre, etc.';
	late final _TranslationsScreensExploreAuthorsEn authors = _TranslationsScreensExploreAuthorsEn._(_root);
	late final _TranslationsScreensExploreCategoryTabEn categoryTab = _TranslationsScreensExploreCategoryTabEn._(_root);
}

// Path: setting.account
class _TranslationsSettingAccountEn {
	_TranslationsSettingAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Account';
	String get edit => 'Update information';
}

// Path: setting.settings
class _TranslationsSettingSettingsEn {
	_TranslationsSettingSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	String get appearance => 'Appearance';
	String get language => 'Language';
	String get help => 'Help';
	String get logout => 'Logout';
}

// Path: screens.onboarding.title
class _TranslationsScreensOnboardingTitleEn {
	_TranslationsScreensOnboardingTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get t1 => 'Choose from a wide range of e-books';
	String get t2 => 'Accept any payment method';
	String get t3 => 'No wastage of time';
}

// Path: screens.onboarding.subtitle
class _TranslationsScreensOnboardingSubtitleEn {
	_TranslationsScreensOnboardingSubtitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get st1 => 'Welcome to a World of Limitless Choices - Your Perfect Product Awaits!';
	String get st2 => 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!';
	String get st3 => 'Receive your e-books as soon as you complete payment - No Waiting, No Hassle!';
}

// Path: screens.login.form
class _TranslationsScreensLoginFormEn {
	_TranslationsScreensLoginFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email';
	String get password => 'Password';
}

// Path: screens.login.placeholder
class _TranslationsScreensLoginPlaceholderEn {
	_TranslationsScreensLoginPlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Enter your email';
	String get password => 'Enter your password';
}

// Path: screens.login.button
class _TranslationsScreensLoginButtonEn {
	_TranslationsScreensLoginButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signIn => 'Sign In';
	String get createAccount => 'Create Account';
}

// Path: screens.login.text
class _TranslationsScreensLoginTextEn {
	_TranslationsScreensLoginTextEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get orSignInWith => 'or sign in with';
	String get privacyPolicy => 'Privacy Policy';
	String get termsOfUse => 'Terms of use';
	String get rememberMe => 'Remember me';
	String get forgotPassword => 'Forgot password';
}

// Path: screens.register.form
class _TranslationsScreensRegisterFormEn {
	_TranslationsScreensRegisterFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fullName => 'Full Name';
	String get email => 'Email';
	String get username => 'Username';
	String get password => 'Password';
	String get confirmPassword => 'Confirm Password';
	String get phoneNo => 'Phone Number';
}

// Path: screens.register.placeholder
class _TranslationsScreensRegisterPlaceholderEn {
	_TranslationsScreensRegisterPlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fullName => 'Enter your full name';
	String get username => 'Enter your username';
	String get email => 'Enter your email';
	String get password => 'Enter your password';
	String get confirmPassword => 'Confirm your password';
	String get phoneNo => 'Enter your phone number';
}

// Path: screens.register.button
class _TranslationsScreensRegisterButtonEn {
	_TranslationsScreensRegisterButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get createAccount => 'Create Account';
}

// Path: screens.register.text
class _TranslationsScreensRegisterTextEn {
	_TranslationsScreensRegisterTextEn._(this._root);

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
	String get successVerifyEmailSubtitle => 'Welcome to Your Ultimate Ebook Destination! Your account is created. Unlease the power of limitless choices and unmatched convenience!';
}

// Path: screens.forgotPassword.form
class _TranslationsScreensForgotPasswordFormEn {
	_TranslationsScreensForgotPasswordFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email';
}

// Path: screens.forgotPassword.placeholder
class _TranslationsScreensForgotPasswordPlaceholderEn {
	_TranslationsScreensForgotPasswordPlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Enter your email';
}

// Path: screens.forgotPassword.button
class _TranslationsScreensForgotPasswordButtonEn {
	_TranslationsScreensForgotPasswordButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get resetPassword => 'Reset Password';
}

// Path: screens.forgotPassword.text
class _TranslationsScreensForgotPasswordTextEn {
	_TranslationsScreensForgotPasswordTextEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get backToLogin => 'Back to login';
	String get success => 'Reset Password Success';
	String get successSubtile => 'We have sent a password reset link to your email address. Please check your email and follow the instructions to reset your password.';
}

// Path: screens.home.appbar
class _TranslationsScreensHomeAppbarEn {
	_TranslationsScreensHomeAppbarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String title({required Object name}) => 'Hi, ${name}';
	String get quote => 'Good day for shopping!';
}

// Path: screens.explore.appbar
class _TranslationsScreensExploreAppbarEn {
	_TranslationsScreensExploreAppbarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Explore';
}

// Path: screens.explore.authors
class _TranslationsScreensExploreAuthorsEn {
	_TranslationsScreensExploreAuthorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Featured Authors';
	String numberOfBooks({required Object number}) => '${number} books';
}

// Path: screens.explore.categoryTab
class _TranslationsScreensExploreCategoryTabEn {
	_TranslationsScreensExploreCategoryTabEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'You might like';
}
