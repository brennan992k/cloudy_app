import 'package:cloudy_app/presentations/screens/home/components/news_card.dart';
import 'package:flutter/material.dart';

class NewsCardList extends StatelessWidget {
  const NewsCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 231,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          NewsCard(),
          NewsCard(),
          NewsCard(),
          NewsCard()
        ],
      ),
    );
  }
}
