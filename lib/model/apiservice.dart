
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:buddy_blues/model/articles_response.dart';

class ApiService {
  Future<ArticlesResponse> listArticles() async {
    final response = await http.get(Uri.parse("https://newsapi.org/v2/everything?q=(%22baby%20blues%22%20OR%20%22postpartum%20depression%22)&language=en&apiKey=71ea99d001f5427682a68af2429c83ae"));
    if (response.statusCode == 200) {
      return ArticlesResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}