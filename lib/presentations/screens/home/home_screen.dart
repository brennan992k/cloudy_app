import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/screens/home/components/country_weather_card_list.dart';
import 'package:cloudy_app/presentations/screens/home/components/daily_forecast_card.dart';
import 'package:cloudy_app/presentations/screens/home/components/drawer_menu.dart';
import 'package:cloudy_app/presentations/screens/home/components/hour_forecast_card.dart';
import 'package:cloudy_app/presentations/screens/home/components/location_card.dart';
import 'package:cloudy_app/presentations/screens/home/components/news_card_list.dart';
import 'package:cloudy_app/presentations/screens/home/components/sun_condition_card.dart';
import 'package:cloudy_app/presentations/screens/home/components/wind_card.dart';
import 'package:cloudy_app/presentations/widgets/zoom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ZoomDrawerController _drawerController = ZoomDrawerController();

  @override
  void initState() {
    super.initState();
  }

  void _toogleDrawer() {
    _drawerController.toggle!();
  }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        borderRadius: 24,
        style: DrawerStyle.style9,
        openCurve: Curves.fastOutSlowIn,
        slideWidth: MediaQuery.of(context).size.width * 0.7,
        duration: const Duration(milliseconds: 500),
        showShadow: true,
        angle: 0,
        controller: _drawerController,
        menuScreen: const DrawerMenu(),
        mainScreen: Scaffold(
          appBar: AppBar(
            leading: TextButton(
              onPressed: _toogleDrawer,
              child: SvgPicture.asset(
                Assets.drawermenu,
                width: 24,
                semanticsLabel: 'vector',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.searchRoute);
                },
                child: SvgPicture.asset(
                  Assets.search,
                  width: 24,
                  semanticsLabel: 'vector',
                ),
              )
            ],
            title: Text(
              'Weather',
              style: AppTheme.textStyle(Theme.of(context).textTheme.bodyLarge),
            ),
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: const [
                CountryWeatherCardList(),
                NewsCardList(),
                HourForecastCard(),
                DailyForecastCard(),
                LocationCard(),
                SunConditionCard(),
                WindCard(),
              ],
            ),
          )),
        ));
  }
}
