import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpClient {
  static const String _apiUrl = 'https://threez-store.onrender.com/api/v1';

  static Future<dynamic> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_apiUrl/$endpoint'));
    return _handleResponse(response);
  }

  static Future<dynamic> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_apiUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
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

  static Future<dynamic> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_apiUrl/$endpoint'));
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    dynamic decodedResponse = json.decode(response.body);
    return decodedResponse;
  }
}
