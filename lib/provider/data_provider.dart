import 'dart:developer';

import 'package:zzz_book_store/model/cart.dart';
import 'package:zzz_book_store/model/category.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/utils/constants/enums.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';

class DataProvider {
  static Future<dynamic> getData({
    required DataType dataType,
    required String endpoint,
    String? token,
  }) async {
    try {
      dynamic data = await HttpClient.get(endpoint: endpoint, token: token);

      switch (dataType) {
        case DataType.product:
          return (data as List).map((json) => Product.fromJson(json)).toList();
        case DataType.category:
          return (data as List).map((json) => Category.fromJson(json)).toList();
        case DataType.cart:
          return (data as List).map((json) => Cart.fromJson(json)).toList();
        default:
          return [];
      }
    } catch (e) {
      log('Error $endpoint: $e');
      return [];
    }
  }

  static Future<dynamic> postData({
    required String endpoint,
    required dynamic data,
    String? token,
  }) async {
    try {
      dynamic response =
          await HttpClient.post(endpoint: endpoint, token: token, data: data);
      return response;
    } catch (e) {
      log('Error $endpoint: $e');
      return;
    }
  }

  static Future<dynamic> deleteData(
      {required String endpoint, dynamic data, String? token}) async {
    try {
      dynamic response =
          await HttpClient.delete(endpoint: endpoint, token: token, data: data);
      return response;
    } catch (e) {
      log('Error $endpoint: $e');
      return;
    }
  }
}
