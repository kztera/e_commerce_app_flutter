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
	@override late final _TranslationsButtonsVi buttons = _TranslationsButtonsVi._(_root);
	@override late final _TranslationsCommonVi common = _TranslationsCommonVi._(_root);
	@override late final _TranslationsErrorsVi errors = _TranslationsErrorsVi._(_root);
	@override late final _TranslationsMessagesVi messages = _TranslationsMessagesVi._(_root);
	@override late final _TranslationsNavigationVi navigation = _TranslationsNavigationVi._(_root);
	@override late final _TranslationsScreensVi screens = _TranslationsScreensVi._(_root);
	@override late final _TranslationsSettingVi setting = _TranslationsSettingVi._(_root);
}

// Path: buttons
class _TranslationsButtonsVi extends _TranslationsButtonsEn {
	_TranslationsButtonsVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get skip => 'Bỏ qua';
	@override String get and => 'và';
	@override String get done => 'Xong';
	@override String get submit => 'Xác nhận';
	@override String get appName => '3Z Store';
	@override String get btcontinue => 'Tiếp tục';
	@override String get resend => 'Gửi lại';
	@override String get cancel => 'Hủy';
	@override String get create => 'Tạo';
	@override String get update => 'Cập nhật';
	@override String get edit => 'Chỉnh sửa';
	@override String get delete => 'Xóa';
	@override String get detail => 'Chi tiết';
	@override String get viewAll => 'Xem thêm';
}

// Path: common
class _TranslationsCommonVi extends _TranslationsCommonEn {
	_TranslationsCommonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get copyright => '© {year} - Bản quyển thuộc về Khoa Nguyễn. Mọi quyền được bảo lưu. Phiên bản {version}';
	@override String get filter => 'Filter';
}

// Path: errors
class _TranslationsErrorsVi extends _TranslationsErrorsEn {
	_TranslationsErrorsVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorsProductsVi products = _TranslationsErrorsProductsVi._(_root);
}

// Path: messages
class _TranslationsMessagesVi extends _TranslationsMessagesEn {
	_TranslationsMessagesVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMessagesSnackbarVi snackbar = _TranslationsMessagesSnackbarVi._(_root);
}

// Path: navigation
class _TranslationsNavigationVi extends _TranslationsNavigationEn {
	_TranslationsNavigationVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get home => 'Trang chủ';
	@override String get explore => 'Khám phá';
	@override String get wishlist => 'Yêu thích';
	@override String get cart => 'Giỏ hàng';
	@override String get profile => 'Tài khoản';
}

// Path: screens
class _TranslationsScreensVi extends _TranslationsScreensEn {
	_TranslationsScreensVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsScreensOnboardingVi onboarding = _TranslationsScreensOnboardingVi._(_root);
	@override late final _TranslationsScreensLoginVi login = _TranslationsScreensLoginVi._(_root);
	@override late final _TranslationsScreensRegisterVi register = _TranslationsScreensRegisterVi._(_root);
	@override late final _TranslationsScreensForgotPasswordVi forgotPassword = _TranslationsScreensForgotPasswordVi._(_root);
	@override late final _TranslationsScreensHomeVi home = _TranslationsScreensHomeVi._(_root);
}

// Path: setting
class _TranslationsSettingVi extends _TranslationsSettingEn {
	_TranslationsSettingVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cài đặt';
	@override late final _TranslationsSettingAccountVi account = _TranslationsSettingAccountVi._(_root);
	@override late final _TranslationsSettingSettingsVi settings = _TranslationsSettingSettingsVi._(_root);
}

// Path: errors.products
class _TranslationsErrorsProductsVi extends _TranslationsErrorsProductsEn {
	_TranslationsErrorsProductsVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get e1000 => 'Không tìm thấy sản phẩm nào';
}

// Path: messages.snackbar
class _TranslationsMessagesSnackbarVi extends _TranslationsMessagesSnackbarEn {
	_TranslationsMessagesSnackbarVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get loginSuccess => 'Đăng nhập thành công';
}

// Path: screens.onboarding
class _TranslationsScreensOnboardingVi extends _TranslationsScreensOnboardingEn {
	_TranslationsScreensOnboardingVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsScreensOnboardingTitleVi title = _TranslationsScreensOnboardingTitleVi._(_root);
	@override late final _TranslationsScreensOnboardingSubtitleVi subtitle = _TranslationsScreensOnboardingSubtitleVi._(_root);
}

// Path: screens.login
class _TranslationsScreensLoginVi extends _TranslationsScreensLoginEn {
	_TranslationsScreensLoginVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chào mừng trở lại';
	@override String get subtitle => 'Đăng nhập và mở ra thế giới sách không giới hạn!';
	@override late final _TranslationsScreensLoginFormVi form = _TranslationsScreensLoginFormVi._(_root);
	@override late final _TranslationsScreensLoginPlaceholderVi placeholder = _TranslationsScreensLoginPlaceholderVi._(_root);
	@override late final _TranslationsScreensLoginButtonVi button = _TranslationsScreensLoginButtonVi._(_root);
	@override late final _TranslationsScreensLoginTextVi text = _TranslationsScreensLoginTextVi._(_root);
}

// Path: screens.register
class _TranslationsScreensRegisterVi extends _TranslationsScreensRegisterEn {
	_TranslationsScreensRegisterVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đăng ký';
	@override String get subtitle => 'Tạo tài khoản của bạn để có thể bắt đầu mua sắm!';
	@override late final _TranslationsScreensRegisterFormVi form = _TranslationsScreensRegisterFormVi._(_root);
	@override late final _TranslationsScreensRegisterPlaceholderVi placeholder = _TranslationsScreensRegisterPlaceholderVi._(_root);
	@override late final _TranslationsScreensRegisterButtonVi button = _TranslationsScreensRegisterButtonVi._(_root);
	@override late final _TranslationsScreensRegisterTextVi text = _TranslationsScreensRegisterTextVi._(_root);
}

// Path: screens.forgotPassword
class _TranslationsScreensForgotPasswordVi extends _TranslationsScreensForgotPasswordEn {
	_TranslationsScreensForgotPasswordVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quên mật khẩu';
	@override String get subtitle => 'Đừng lo lắng, ai cũng có thể quên mật khẩu! Nhập email và chúng tôi sẽ gửi cho bạn mã xác nhận để đặt lại mật khẩu của bạn.';
	@override late final _TranslationsScreensForgotPasswordFormVi form = _TranslationsScreensForgotPasswordFormVi._(_root);
	@override late final _TranslationsScreensForgotPasswordPlaceholderVi placeholder = _TranslationsScreensForgotPasswordPlaceholderVi._(_root);
	@override late final _TranslationsScreensForgotPasswordButtonVi button = _TranslationsScreensForgotPasswordButtonVi._(_root);
	@override late final _TranslationsScreensForgotPasswordTextVi text = _TranslationsScreensForgotPasswordTextVi._(_root);
}

// Path: screens.home
class _TranslationsScreensHomeVi extends _TranslationsScreensHomeEn {
	_TranslationsScreensHomeVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsScreensHomeAppbarVi appbar = _TranslationsScreensHomeAppbarVi._(_root);
	@override String get search => 'Tìm kiếm tên sách, tác giả, thể loại...';
	@override String get category => 'Thể loại nổi bật';
	@override String get popularProduct => 'Sách phổ biến';
}

// Path: setting.account
class _TranslationsSettingAccountVi extends _TranslationsSettingAccountEn {
	_TranslationsSettingAccountVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tài khoản';
	@override String get edit => 'Chỉnh sửa thông tin';
}

// Path: setting.settings
class _TranslationsSettingSettingsVi extends _TranslationsSettingSettingsEn {
	_TranslationsSettingSettingsVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chung';
	@override String get appearance => 'Giao diện';
	@override String get language => 'Ngôn ngữ';
	@override String get help => 'Hỗ trợ';
	@override String get logout => 'Đăng xuất';
}

// Path: screens.onboarding.title
class _TranslationsScreensOnboardingTitleVi extends _TranslationsScreensOnboardingTitleEn {
	_TranslationsScreensOnboardingTitleVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get t1 => 'Vô hạn lựa chọn';
	@override String get t2 => 'Chấp nhận mọi phương thức thanh toán';
	@override String get t3 => 'Không cần chờ đợi';
}

// Path: screens.onboarding.subtitle
class _TranslationsScreensOnboardingSubtitleVi extends _TranslationsScreensOnboardingSubtitleEn {
	_TranslationsScreensOnboardingSubtitleVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get st1 => 'Chào mừng bạn tới với 3Z - Nơi những cuốn sách hay nhất đang đợi bạn cho vào giỏ hàng!';
	@override String get st2 => 'Từ tiền mặt đến thẻ tín dụng, sự thuận tiện của bạn là ưu tiên hàng đầu của chúng tôi';
	@override String get st3 => 'Nhận được sách ngay lập tức sau khi thanh toán!';
}

// Path: screens.login.form
class _TranslationsScreensLoginFormVi extends _TranslationsScreensLoginFormEn {
	_TranslationsScreensLoginFormVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Email';
	@override String get password => 'Mật khẩu';
}

// Path: screens.login.placeholder
class _TranslationsScreensLoginPlaceholderVi extends _TranslationsScreensLoginPlaceholderEn {
	_TranslationsScreensLoginPlaceholderVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Nhập email tài khoản';
	@override String get password => 'Nhập mật khẩu';
}

// Path: screens.login.button
class _TranslationsScreensLoginButtonVi extends _TranslationsScreensLoginButtonEn {
	_TranslationsScreensLoginButtonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get signIn => 'Đăng nhập';
	@override String get createAccount => 'Tạo tài khoản';
}

// Path: screens.login.text
class _TranslationsScreensLoginTextVi extends _TranslationsScreensLoginTextEn {
	_TranslationsScreensLoginTextVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get orSignInWith => 'hoặc đăng nhập với';
	@override String get privacyPolicy => 'Chính sách bảo mật';
	@override String get termsOfUse => 'Điều khoản dịch vụ';
	@override String get rememberMe => 'Ghi nhớ đăng nhập';
	@override String get forgotPassword => 'Quên mật khẩu';
}

// Path: screens.register.form
class _TranslationsScreensRegisterFormVi extends _TranslationsScreensRegisterFormEn {
	_TranslationsScreensRegisterFormVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get fullName => 'Họ và tên';
	@override String get username => 'Tên tài khoản';
	@override String get email => 'Email';
	@override String get password => 'Mật khẩu';
	@override String get confirmPassword => 'Xác nhận mật khẩu';
	@override String get phoneNo => 'Số điện thoại';
}

// Path: screens.register.placeholder
class _TranslationsScreensRegisterPlaceholderVi extends _TranslationsScreensRegisterPlaceholderEn {
	_TranslationsScreensRegisterPlaceholderVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get fullName => 'Nhập họ và tên của bạn';
	@override String get username => 'Nhập tên tài khoản của bạn';
	@override String get email => 'Nhập email của bạn';
	@override String get password => 'Nhập mật khẩu của bạn';
	@override String get confirmPassword => 'Xác nhận mật khẩu của bạn';
	@override String get phoneNo => 'Nhập số điện thoại của bạn';
}

// Path: screens.register.button
class _TranslationsScreensRegisterButtonVi extends _TranslationsScreensRegisterButtonEn {
	_TranslationsScreensRegisterButtonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get createAccount => 'Tạo tài khoản';
}

// Path: screens.register.text
class _TranslationsScreensRegisterTextVi extends _TranslationsScreensRegisterTextEn {
	_TranslationsScreensRegisterTextVi._(_TranslationsVi root) : this._root = root, super._(root);

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
	@override String get successVerifyEmailSubtitle => 'Tài khoản của bạn đã được xác thực. Trải nghiệm mua sách tuyệt vời tại 3Z ngay bây giờ!';
}

// Path: screens.forgotPassword.form
class _TranslationsScreensForgotPasswordFormVi extends _TranslationsScreensForgotPasswordFormEn {
	_TranslationsScreensForgotPasswordFormVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Email';
}

// Path: screens.forgotPassword.placeholder
class _TranslationsScreensForgotPasswordPlaceholderVi extends _TranslationsScreensForgotPasswordPlaceholderEn {
	_TranslationsScreensForgotPasswordPlaceholderVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get email => 'Nhập email của bạn';
}

// Path: screens.forgotPassword.button
class _TranslationsScreensForgotPasswordButtonVi extends _TranslationsScreensForgotPasswordButtonEn {
	_TranslationsScreensForgotPasswordButtonVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get resetPassword => 'Đặt lại mật khẩu';
}

// Path: screens.forgotPassword.text
class _TranslationsScreensForgotPasswordTextVi extends _TranslationsScreensForgotPasswordTextEn {
	_TranslationsScreensForgotPasswordTextVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get backToLogin => 'Quay lại đăng nhập';
	@override String get success => 'Đặt lại mật khẩu thành công';
	@override String get successSubtile => 'Một email đã được gửi đến email của bạn. Vui lòng kiểm tra và làm theo hướng dẫn để đặt lại mật khẩu của bạn.';
}

// Path: screens.home.appbar
class _TranslationsScreensHomeAppbarVi extends _TranslationsScreensHomeAppbarEn {
	_TranslationsScreensHomeAppbarVi._(_TranslationsVi root) : this._root = root, super._(root);

	@override final _TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Chào bạn, ${name}';
	@override String get quote => 'Vạn đầu sách hay đang chờ bạn khám phá';
}
