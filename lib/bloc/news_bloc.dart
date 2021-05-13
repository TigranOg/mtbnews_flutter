import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtb_news/bloc/news_event.dart';
import 'package:mtb_news/bloc/news_state.dart';
import 'package:mtb_news/models/news_data.dart';
import 'package:mtb_news/services/news_repository.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository newsRepository;

  NewsBloc(this.newsRepository) : super(NewsEmptyState());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    if (event is NewsLoadFromApiEvent) {
      yield NewsLoadingState();
      try {
        final List<NewsData> _loadedNewsList =
            await newsRepository.getNewsFromApi();

        yield NewsLoadedState(loadedNews: _loadedNewsList);
      } catch (_) {
        yield NewsErrorState();
      }
    } else if (event is NewsLoadFromSavedEvent) {
      yield NewsEmptyState();
    }
  }
}
