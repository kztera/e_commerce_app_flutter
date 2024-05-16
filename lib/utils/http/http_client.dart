import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpClient {
  static const String _apiUrl = 'http://bookstore.test.mqsolutions.vn/api/v1';
  static const String _apiMoMo = 'https://test-payment.momo.vn';

  static Future<dynamic> get({required endpoint, String? token}) async {
    final response = await http.get(
      Uri.parse('$_apiUrl/$endpoint'),
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
    );
    return _handleResponse(response);
  }

  static Future<dynamic> post(
      {required String endpoint, String? token, required dynamic data}) async {
    final response = await http.post(
      Uri.parse('$_apiUrl/$endpoint'),
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token'
      },
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static Future<dynamic> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_apiUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static Future<dynamic> delete(
      {required String endpoint, dynamic data, String? token}) async {
    final response = await http.delete(
      Uri.parse('$_apiUrl/$endpoint'),
      headers: {
        if (token != null) 'Authorization': 'Bearer $token',
      },
    );
    return _handleResponse(response);
  }

  static Future<dynamic> postMoMo(
      {required String endpoint, required dynamic data}) async {
    final response = await http.post(
      Uri.parse('$_apiMoMo/$endpoint'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static dynamic _handleResponse(http.Response response) {
    dynamic decodedResponse = json.decode(response.body);
    return decodedResponse;
  }
}
