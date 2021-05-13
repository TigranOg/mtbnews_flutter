import 'package:mtb_news/models/news_data.dart';
import 'package:mtb_news/services/news_provider.dart';

class NewsRepository {
  NewsProvider _newsProvider = NewsProvider();

  Future<List<NewsData>>getNewsFromApi() => _newsProvider.getNewsFromApi();
}