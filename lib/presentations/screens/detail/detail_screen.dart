import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/screens/detail/daily_weather_card.dart';
import 'package:cloudy_app/presentations/screens/detail/weather_info_item.dart';
import 'package:cloudy_app/presentations/widgets/custom_appbar.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.buildAppBarWithBack(
        context,
        'Berlin, Germany',
        color: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.settingsRoute);
            },
            child: SvgPicture.asset(
              Assets.setting,
              width: 24,
              semanticsLabel: 'vector',
              color: Colors.white,
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Expanded(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                gradient: AppTheme.linearGradientColor1,
                borderRadius: BorderRadius.only(
                  bottomLeft: AppTheme.borderRadius,
                  bottomRight: AppTheme.borderRadius,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(AppTheme.spacing1),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 4 - 100,
                    ),
                    ViewImage(
                      boxshadow: [AppTheme.shadowColor1],
                      image: const AssetImage(Assets.cloudysun),
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Partly Cloudy',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.headline5,
                      ).copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tuesday, 24 August 2020',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodyLarge,
                      ).copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const DailyWeatherCard(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        WeatherInfoItem(),
                        WeatherInfoItem(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        WeatherInfoItem(),
                        WeatherInfoItem(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RoundCard(
                      color: Colors.white,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            Assets.star,
                            width: 24,
                            semanticsLabel: 'vector',
                          ),
                          SizedBox(
                            width: AppTheme.spacing2,
                          ),
                          Text(
                            'Its ok to hangout with your friend!',
                            style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodySmall),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
