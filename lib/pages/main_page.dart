import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtb_news/bloc/news_bloc.dart';
import 'package:mtb_news/services/news_repository.dart';
import 'package:mtb_news/widgets/navigation_bar.dart';
import 'package:mtb_news/widgets/news_list_widget.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final newsRepository = NewsRepository();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurpleAccent,
              Colors.white60,
              Colors.white,
              Colors.red,
            ],
          ),
        ),
        child: BlocProvider(
          create: (contex) => NewsBloc(newsRepository),
          child: Stack(
            children: [
              NewsListPage(),
              NavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
