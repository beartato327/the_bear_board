import 'dart:convert';
import 'package:http/http.dart' as http;

class TBBHttpHelper{
  static const String _baseUrl = '';

  // Helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return json.decode(response.body);
    } else{
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}