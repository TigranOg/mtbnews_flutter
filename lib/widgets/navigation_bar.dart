import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtb_news/bloc/news_bloc.dart';
import 'package:mtb_news/bloc/news_event.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsBloc = BlocProvider.of<NewsBloc>(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.redAccent,
        color: Colors.redAccent,
        height: 60,
        animationDuration: Duration(milliseconds: 400),
        animationCurve: Curves.easeInBack,
        items: <Widget>[
          Icon(
            Icons.list_alt_outlined,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            Icons.calendar_today_outlined,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            Icons.info_outline,
            size: 40,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          print ('$index');

          newsBloc.add(NewsLoadFromApiEvent());
        },
      ),
    );
  }
}
