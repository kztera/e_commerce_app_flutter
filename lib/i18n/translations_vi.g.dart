///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'translations.g.dart';

// Path: <root>
class _TranslationsVi extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsVi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _TranslationsVi _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorsVi errors = _TranslationsErrorsVi._(_root);
	@override late final _TranslationsWidgetsVi widgets = _TranslationsWidgetsVi._(_root);
}

// Path: errors
class _TranslationsErrorsVi extends _TranslationsErrorsEn {
	_TranslationsErrorsVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorsProductsVi products = _TranslationsErrorsProductsVi._(_root);
}

// Path: widgets
class _TranslationsWidgetsVi extends _TranslationsWidgetsEn {
	_TranslationsWidgetsVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsWidgetsButtonVi button = _TranslationsWidgetsButtonVi._(_root);
	@override late final _TranslationsWidgetsOnboardingVi onboarding = _TranslationsWidgetsOnboardingVi._(_root);
	@override late final _TranslationsWidgetsLoginVi login = _TranslationsWidgetsLoginVi._(_root);
	@override late final _TranslationsWidgetsRegisterVi register = _TranslationsWidgetsRegisterVi._(_root);
	@override late final _TranslationsWidgetsForgotPasswordVi forgotPassword = _TranslationsWidgetsForgotPasswordVi._(_root);
}

// Path: errors.products
class _TranslationsErrorsProductsVi extends _TranslationsErrorsProductsEn {
	_TranslationsErrorsProductsVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorsProductsE1000Vi e1000 = _TranslationsErrorsProductsE1000Vi._(_root);
}

// Path: widgets.button
class _TranslationsWidgetsButtonVi extends _TranslationsWidgetsButtonEn {
	_TranslationsWidgetsButtonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get skip => 'Bỏ qua';
	@override String get and => 'và';
	@override String get done => 'Xong';
	@override String get submit => 'Xác nhận';
	@override String get appName => '3Z Store';
	@override String get btcontinue => 'Tiếp tục';
	@override String get resend => 'Gửi lại';
}

// Path: widgets.onboarding
class _TranslationsWidgetsOnboardingVi extends _TranslationsWidgetsOnboardingEn {
	_TranslationsWidgetsOnboardingVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsWidgetsOnboardingTitleVi title = _TranslationsWidgetsOnboardingTitleVi._(_root);
	@override late final _TranslationsWidgetsOnboardingSubtitleVi subtitle = _TranslationsWidgetsOnboardingSubtitleVi._(_root);
}

// Path: widgets.login
class _TranslationsWidgetsLoginVi extends _TranslationsWidgetsLoginEn {
	_TranslationsWidgetsLoginVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chào mừng trở lại';
	@override String get subtitle => 'Đăng nhập và mở ra thế giới sách không giới hạn!';
	@override late final _TranslationsWidgetsLoginFormVi form = _TranslationsWidgetsLoginFormVi._(_root);
	@override late final _TranslationsWidgetsLoginPlaceholderVi placeholder = _TranslationsWidgetsLoginPlaceholderVi._(_root);
	@override late final _TranslationsWidgetsLoginButtonVi button = _TranslationsWidgetsLoginButtonVi._(_root);
	@override late final _TranslationsWidgetsLoginCommonVi common = _TranslationsWidgetsLoginCommonVi._(_root);
}

// Path: widgets.register
class _TranslationsWidgetsRegisterVi extends _TranslationsWidgetsRegisterEn {
	_TranslationsWidgetsRegisterVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đăng ký';
	@override String get subtitle => 'Tạo tài khoản của bạn để có thể bắt đầu mua sắm!';
	@override late final _TranslationsWidgetsRegisterFormVi form = _TranslationsWidgetsRegisterFormVi._(_root);
	@override late final _TranslationsWidgetsRegisterPlaceholderVi placeholder = _TranslationsWidgetsRegisterPlaceholderVi._(_root);
	@override late final _TranslationsWidgetsRegisterButtonVi button = _TranslationsWidgetsRegisterButtonVi._(_root);
	@override late final _TranslationsWidgetsRegisterCommonVi common = _TranslationsWidgetsRegisterCommonVi._(_root);
}

// Path: widgets.forgotPassword
class _TranslationsWidgetsForgotPasswordVi extends _TranslationsWidgetsForgotPasswordEn {
	_TranslationsWidgetsForgotPasswordVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quên mật khẩu';
	@override String get subtitle => 'Đừng lo lắng, ai cũng có thể quên mật khẩu! Nhập email và chúng tôi sẽ gửi cho bạn mã xác nhận để đặt lại mật khẩu của bạn.';
	@override late final _TranslationsWidgetsForgotPasswordFormVi form = _TranslationsWidgetsForgotPasswordFormVi._(_root);
	@override late final _TranslationsWidgetsForgotPasswordPlaceholderVi placeholder = _TranslationsWidgetsForgotPasswordPlaceholderVi._(_root);
	@override late final _TranslationsWidgetsForgotPasswordButtonVi button = _TranslationsWidgetsForgotPasswordButtonVi._(_root);
	@override late final _TranslationsWidgetsForgotPasswordCommonVi common = _TranslationsWidgetsForgotPasswordCommonVi._(_root);
}

// Path: errors.products.e1000
class _TranslationsErrorsProductsE1000Vi extends _TranslationsErrorsProductsE1000En {
	_TranslationsErrorsProductsE1000Vi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lỗi đếm sản phẩm';
	@override String get description => 'Không tìm thấy sản phẩm';
}

// Path: widgets.onboarding.title
class _TranslationsWidgetsOnboardingTitleVi extends _TranslationsWidgetsOnboardingTitleEn {
	_TranslationsWidgetsOnboardingTitleVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get t1 => 'Vô hạn lựa chọn';
	@override String get t2 => 'Chấp nhận mọi phương thức thanh toán';
	@override String get t3 => 'Không cần chờ đợi';
}

// Path: widgets.onboarding.subtitle
class _TranslationsWidgetsOnboardingSubtitleVi extends _TranslationsWidgetsOnboardingSubtitleEn {
	_TranslationsWidgetsOnboardingSubtitleVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get st1 => 'Chào mừng bạn tới với 3Z - Nơi những cuốn sách hay nhất đang đợi bạn cho vào giỏ hàng!';
	@override String get st2 => 'Từ tiền mặt đến thẻ tín dụng, sự thuận tiện của bạn là ưu tiên hàng đầu của chúng tôi';
	@override String get st3 => 'Nhận được sách ngay lập tức sau khi thanh toán!';
}

// Path: widgets.login.form
class _TranslationsWidgetsLoginFormVi extends _TranslationsWidgetsLoginFormEn {
	_TranslationsWidgetsLoginFormVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Email';
	@override String get password => 'Mật khẩu';
}

// Path: widgets.login.placeholder
class _TranslationsWidgetsLoginPlaceholderVi extends _TranslationsWidgetsLoginPlaceholderEn {
	_TranslationsWidgetsLoginPlaceholderVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Nhập email tài khoản';
	@override String get password => 'Nhập mật khẩu';
}

// Path: widgets.login.button
class _TranslationsWidgetsLoginButtonVi extends _TranslationsWidgetsLoginButtonEn {
	_TranslationsWidgetsLoginButtonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get signIn => 'Đăng nhập';
	@override String get createAccount => 'Tạo tài khoản';
}

// Path: widgets.login.common
class _TranslationsWidgetsLoginCommonVi extends _TranslationsWidgetsLoginCommonEn {
	_TranslationsWidgetsLoginCommonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get orSignInWith => 'hoặc đăng nhập với';
	@override String get privacyPolicy => 'Chính sách bảo mật';
	@override String get termsOfUse => 'Điều khoản dịch vụ';
	@override String get rememberMe => 'Ghi nhớ đăng nhập';
	@override String get forgotPassword => 'Quên mật khẩu';
}

// Path: widgets.register.form
class _TranslationsWidgetsRegisterFormVi extends _TranslationsWidgetsRegisterFormEn {
	_TranslationsWidgetsRegisterFormVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get fullName => 'Họ và tên';
	@override String get username => 'Tên tài khoản';
	@override String get email => 'Email';
	@override String get password => 'Mật khẩu';
	@override String get confirmPassword => 'Xác nhận mật khẩu';
	@override String get phoneNo => 'Số điện thoại';
}

// Path: widgets.register.placeholder
class _TranslationsWidgetsRegisterPlaceholderVi extends _TranslationsWidgetsRegisterPlaceholderEn {
	_TranslationsWidgetsRegisterPlaceholderVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get fullName => 'Nhập họ và tên của bạn';
	@override String get username => 'Nhập tên tài khoản của bạn';
	@override String get email => 'Nhập email của bạn';
	@override String get password => 'Nhập mật khẩu của bạn';
	@override String get confirmPassword => 'Xác nhận mật khẩu của bạn';
	@override String get phoneNo => 'Nhập số điện thoại của bạn';
}

// Path: widgets.register.button
class _TranslationsWidgetsRegisterButtonVi extends _TranslationsWidgetsRegisterButtonEn {
	_TranslationsWidgetsRegisterButtonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get createAccount => 'Tạo tài khoản';
}

// Path: widgets.register.common
class _TranslationsWidgetsRegisterCommonVi extends _TranslationsWidgetsRegisterCommonEn {
	_TranslationsWidgetsRegisterCommonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

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

// Path: widgets.forgotPassword.form
class _TranslationsWidgetsForgotPasswordFormVi extends _TranslationsWidgetsForgotPasswordFormEn {
	_TranslationsWidgetsForgotPasswordFormVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Email';
}

// Path: widgets.forgotPassword.placeholder
class _TranslationsWidgetsForgotPasswordPlaceholderVi extends _TranslationsWidgetsForgotPasswordPlaceholderEn {
	_TranslationsWidgetsForgotPasswordPlaceholderVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Nhập email của bạn';
}

// Path: widgets.forgotPassword.button
class _TranslationsWidgetsForgotPasswordButtonVi extends _TranslationsWidgetsForgotPasswordButtonEn {
	_TranslationsWidgetsForgotPasswordButtonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get resetPassword => 'Đặt lại mật khẩu';
}

// Path: widgets.forgotPassword.common
class _TranslationsWidgetsForgotPasswordCommonVi extends _TranslationsWidgetsForgotPasswordCommonEn {
	_TranslationsWidgetsForgotPasswordCommonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get backToLogin => 'Quay lại đăng nhập';
	@override String get success => 'Đặt lại mật khẩu thành công';
	@override String get successText => 'Một email đã được gửi đến email của bạn. Vui lòng kiểm tra và làm theo hướng dẫn để đặt lại mật khẩu của bạn.';
}
