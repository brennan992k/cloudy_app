import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/screens/home/components/hour_forecast_item.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HourForecastCard extends StatelessWidget {
  const HourForecastCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundCard(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 90 / 100,
      height: 200,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: MediaQuery.of(context).size.width * 5 / 100,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Partly Cloudly',
                      style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodySmall)
                          .copyWith(
                        color: const Color.fromRGBO(160, 152, 174, 1),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'August, 10th 2020',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
                SvgPicture.asset(
                  Assets.jammenu,
                  semanticsLabel: 'vector',
                  width: 24,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
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
      ),
    );
  }
}
