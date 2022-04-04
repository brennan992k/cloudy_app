import 'package:cloudy_app/presentations/screens/home/components/country_weather_card.dart';
import 'package:flutter/material.dart';

class CountryWeatherCardList extends StatelessWidget {
  const CountryWeatherCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 200,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          CountryWeatherCard(),
          CountryWeatherCard(),
          CountryWeatherCard(),
          CountryWeatherCard(),
        ],
      ),
    );
  }
}
