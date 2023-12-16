import 'dart:convert';
import 'package:news_app/data/models/article.dart';
import 'package:http/http.dart'as http;

class ApiService {
  static const String _baseUrl = 'https://newsapi.org/v2';
  static const String _apiKey = '64fed05c43e5420d8174951d1ba76456';
  static const String _category = 'business';
  static const String _country = 'us';

  Future<ArticlesResult> topHeadlines() async {
    final response = await http.get(Uri.parse("$_baseUrl/top-headlines?country=$_country&category=$_category&apiKey=$_apiKey"));
    if (response.statusCode == 200) {
      return ArticlesResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}