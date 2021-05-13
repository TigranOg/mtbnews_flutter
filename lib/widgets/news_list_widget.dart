import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mtb_news/bloc/news_bloc.dart';
import 'package:mtb_news/bloc/news_state.dart';
import 'package:mtb_news/widgets/news_card.dart';

class NewsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        if (state is NewsEmptyState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is NewsErrorState) {
          return Center(
            child: Icon(
              Icons.list_alt_outlined,
              size: 40,
              color: Colors.white,
            ),
          );
        }

        if (state is NewsLoadedState) {
          return Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 60.0),
              itemCount: state.loadedNews.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => NewsCard(
                newsData: state.loadedNews[index],
              ),
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
