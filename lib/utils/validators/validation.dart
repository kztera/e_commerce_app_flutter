import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/regex.dart';

class TValidator {
  static String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Tên không được để trống';
    }

    if (!Regex.nameRegExp.hasMatch(name)) {
      return 'Tên không hợp lệ';
    }

    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email là bắt buộc';
    }

    if (!Regex.emailRegExp.hasMatch(email)) {
      return 'Email không hợp lệ';
    }

    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Mật khẩu là bắt buộc';
    }
    if (password.length < 8) {
      return t.screens.register.text.minChar;
    }

    /* if (!password.contains(Regex.uppercaseRegExp)) {
      return "Password must contain at least 1 uppercase character";
    } */

    if (!password.contains(Regex.specialRegExp)) {
      return t.screens.register.text.atLeastOne;
    }

    return null;
  }

  static String checkPasswordStrength(String password) {
    if (Regex.passwordStrongRegExp.hasMatch(password)) {
      return "Strong";
    }
    if (Regex.passwordMediumRegExp.hasMatch(password)) {
      return "Medium";
    }
    return "Weak";
  }

  static String? validatePhoneNumber(String? phone) {
    if (phone == null || phone.isEmpty) {
      return 'Số điện thoại là bắt buộc';
    }

    if (!Regex.phoneRegExp.hasMatch(phone)) {
      return 'Số điện thoại không hợp lệ';
    }
    return null;
  }
}
