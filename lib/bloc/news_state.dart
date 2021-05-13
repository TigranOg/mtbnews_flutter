import 'package:flutter/foundation.dart';
import 'package:mtb_news/models/news_data.dart';

abstract class NewsState {}

class NewsEmptyState extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsLoadedState extends NewsState {
  List<NewsData> loadedNews;

  NewsLoadedState({@required this.loadedNews});
}

class NewsErrorState extends NewsState {}
