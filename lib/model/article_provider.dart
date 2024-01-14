import 'package:buddy_blues/model/articles_response.dart';
import 'package:flutter/cupertino.dart';

import 'apiservice.dart';

enum ResultState { loading, noData, hasData, error }

class ArticlesProvider extends ChangeNotifier {
  final ApiService apiService;

  ArticlesProvider({required this.apiService}) {
    _fetchAllArticles();
  }

  late ArticlesResponse _listArticles;
  late ResultState _state;
  String _message = '';

  String get message => _message;
  ArticlesResponse get result => _listArticles;
  ResultState get state => _state;

  Future<dynamic> _fetchAllArticles() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final data = await apiService.listArticles();
      if (data.articles.isEmpty) {
        _state = ResultState.noData;
        notifyListeners();
        return _message = 'No Artciles Available';
      } else {
        _state = ResultState.hasData;
        notifyListeners();
        return _listArticles = data;
      }
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error --> $e';
    }
  }
}
