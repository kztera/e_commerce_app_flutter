import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/regex.dart';

class TValidator {
  static String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    }

    if (!Regex.nameRegExp.hasMatch(name)) {
      return 'The name must be at least 8 characters and no more than 50 characters.';
    }

    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }

    if (!Regex.emailRegExp.hasMatch(email)) {
      return 'Email is invalid';
    }

    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
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
      return 'Phone number is required';
    }

    if (!Regex.phoneRegExp.hasMatch(phone)) {
      return 'Invalid phone number format (10 digits required)';
    }
    return null;
  }
}
