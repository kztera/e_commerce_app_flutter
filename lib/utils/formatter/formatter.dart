import 'package:intl/intl.dart';

class Formatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('DD/MM/YYYY').format(date);
  }

  static String formatCurrency(int amount) {
    return NumberFormat.currency(locale: 'vi_VN', symbol: 'đ').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit Vietnamese phone number format: 091 677 5119
    if (phoneNumber.length == 10) {
      return '${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    }
    return phoneNumber;
  }
}
