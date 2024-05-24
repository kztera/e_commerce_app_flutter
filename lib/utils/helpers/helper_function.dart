import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';
import 'package:zzz_book_store/utils/local_storage/local_storage.dart';

class HelperFunc {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.deepOrange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else {
      return null;
    }
  }

  static void showSnackBar(String message) {
    final scaffoldMessenger = ScaffoldMessenger.of(Get.context!);
    scaffoldMessenger.removeCurrentSnackBar();
    scaffoldMessenger.showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }

  static Future<void> checkToken() async {
    LocalStorage localStorage = LocalStorage();
    Map<String, dynamic>? user = localStorage.readData('user');
    bool isExpired = false;
    if (user != null) {
      isExpired = await HttpClient.get(
          endpoint: "verify-token?token=${user['accessToken']}");
    }
    localStorage.saveData('isExpired', isExpired);
  }

  static String generateSignature(
      {required int amount,
      required String extraData,
      required String ipnUrl,
      required String orderId,
      required String orderInfo,
      required String redirectUrl,
      required String requestId,
      required String requestType}) {
    var secretKey = utf8.encode(dotenv.env['SECRET_KEY'].toString());
    var accessKey = dotenv.env['ACCESS_KEY'].toString();
    var partnerCode = dotenv.env['PARTNER_CODE'].toString();

    var signature = utf8.encode("accessKey=$accessKey&amount=$amount"
        "&extraData=$extraData&ipnUrl=$ipnUrl"
        "&orderId=$orderId&orderInfo=$orderInfo"
        "&partnerCode=$partnerCode&redirectUrl=$redirectUrl"
        "&requestId=$requestId&requestType=$requestType");
    var hMacSha256 = Hmac(sha256, secretKey);
    var digest = hMacSha256.convert(signature);
    return digest.toString();
  }
}
