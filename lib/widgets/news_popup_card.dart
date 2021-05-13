import 'package:flutter/material.dart';
import 'package:mtb_news/models/news_data.dart';
import 'package:mtb_news/widgets/extras/custom_tween.dart';
import 'package:mtb_news/widgets/web_view.dart';

class NewsPopupCard extends StatelessWidget {
  const NewsPopupCard({Key key, this.newsData}) : super(key: key);
  final NewsData newsData;

  @override
  Widget build(BuildContext context) {
    return Hero(
      createRectTween: (begin, end) {
        return CustomRectTween(begin: begin, end: end);
      },
      tag: newsData.id,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 60),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  child: NewsWebView(),
                ),
              ),
              Container(
                color: Colors.redAccent,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.open_in_browser,
                      size: 40,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}