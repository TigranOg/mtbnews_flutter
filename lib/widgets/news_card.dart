import 'package:flutter/material.dart';
import 'package:mtb_news/models/news_data.dart';
import 'package:mtb_news/widgets/extras/custom_tween.dart';
import 'package:mtb_news/widgets/extras/hero_dialog_route.dart';
import 'package:mtb_news/widgets/news_popup_card.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({this.newsData});

  final NewsData newsData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          HeroDialogRoute(
            builder: (context) => Center(
              child: NewsPopupCard(newsData: newsData),
            ),
          ),
        );
      },
      child: Hero(
        createRectTween: (begin, end) {
          return CustomRectTween(begin: begin, end: end);
        },
        tag: newsData.id,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            children: [
              Image.network(newsData.imageUrl, fit: BoxFit.cover),
              Image.asset(
                "assets/images/${newsData.sourceType}-logo.png",
                height: 30,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    color: Colors.black54,
                    padding: EdgeInsets.fromLTRB(16, 2, 16, 2),
                    child: Text(
                      newsData.title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
