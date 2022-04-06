import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/screens/home/components/hour_forecast_item.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:flutter/material.dart';

class DailyWeatherCard extends StatelessWidget {
  const DailyWeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundCard(
        color: Colors.white,
        height: 150,
        padding: EdgeInsets.all(AppTheme.spacing1),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Yesterday'),
                Text('Yesterday'),
                Text('Yesterday'),
              ],
            ),
            SizedBox(height: AppTheme.spacing1),
            SizedBox(
              height: 70,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SizedBox(width: 20),
                  HourForecastItem(),
                  SizedBox(width: 20),
                  HourForecastItem(),
                  SizedBox(width: 20),
                  HourForecastItem(),
                  SizedBox(width: 20),
                  HourForecastItem(),
                  SizedBox(width: 20),
                  HourForecastItem(),
                  SizedBox(width: 20),
                  HourForecastItem(),
                  SizedBox(width: 20),
                  HourForecastItem(),
                  SizedBox(width: 20),
                ],
              ),
            )
          ],
        ));
  }
}
