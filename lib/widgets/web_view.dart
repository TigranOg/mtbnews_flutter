import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatefulWidget {
  @override
  NewsWebViewState createState() => NewsWebViewState();
}

class NewsWebViewState extends State<NewsWebView> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
      'https://www.pinkbike.com/news/new-enduro-race-format-announced.html',
    );
  }
}