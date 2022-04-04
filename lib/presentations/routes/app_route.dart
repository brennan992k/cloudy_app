import 'package:cloudy_app/presentations/screens/detail/detail_screen.dart';
import 'package:cloudy_app/presentations/screens/home/home_screen.dart';
import 'package:cloudy_app/presentations/screens/news/news_screen.dart';
import 'package:cloudy_app/presentations/screens/search/search_screen.dart';
import 'package:cloudy_app/presentations/screens/settings/settings_screen.dart';
import 'package:cloudy_app/presentations/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String splashRoute = '/splashRoute';
  static const String homeRoute = '/';
  static const String detailRoute = '/detail';
  static const String newsRoute = '/news';
  static const String settingsRoute = '/settings';
  static const String searchRoute = '/search';

  static String get initialRoute => homeRoute;

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return _buildRoute(settings, const SplashScreen());
      case homeRoute:
        return _buildRoute(settings, const HomeScreen());
      case detailRoute:
        return _buildRoute(settings, const DetailScreen());
      case newsRoute:
        return _buildRoute(settings, const NewsScreen());
      case settingsRoute:
        return _buildRoute(settings, const SettingsScreen());
      case searchRoute:
        return _buildRoute(settings, const SearchScreen());
      default:
        return _buildRoute(settings, const HomeScreen());
    }
  }

  static Route _buildRoute(RouteSettings settings, Widget page) {
    return MaterialPageRoute<dynamic>(
      builder: (context) => page,
      settings: settings,
    );
  }
}
