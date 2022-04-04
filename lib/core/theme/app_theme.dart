import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppTheme._();

  ///Text Style
  static String fontFamily = 'Poppins';
  static double letterSpacing = 0.44;
  static double letterHeight = 1;

  ///Background style

  static Color backgroundColor = const Color.fromRGBO(196, 196, 196, 1);

  static LinearGradient linearGradientColor1 = const LinearGradient(
    colors: [
      Color.fromRGBO(60, 111, 209, 1),
      Color.fromRGBO(60, 111, 209, 1),
      Color.fromRGBO(124, 168, 255, 1)
    ],
  );
  static LinearGradient linearGradientColor2 = const LinearGradient(
    colors: [
      Color.fromRGBO(255, 255, 255, 1),
      Color.fromRGBO(255, 255, 255, 0)
    ],
  );

  /// Shadow style
  static BoxShadow shadowColor1 = const BoxShadow(
    color: Color.fromRGBO(31, 36, 75, 0.25),
    offset: Offset(0, 15),
    blurRadius: 25,
  );

  ///Border Radius
  static Radius borderRadius = const Radius.circular(20);

  /// define light theme
  static ThemeData get light => ThemeData(
        fontFamily: fontFamily,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      );

  /// define dark theme
  static ThemeData get dark => ThemeData(
        fontFamily: fontFamily,
        appBarTheme: AppBarTheme(color: backgroundColor),
      );

  static Brightness get platformBrightness =>
      WidgetsBinding.instance!.window.platformBrightness;

  static ThemeMode get themeMode =>
      platformBrightness == Brightness.light ? ThemeMode.light : ThemeMode.dark;

  static void setStatusBarAndNavigationBarColor(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        statusBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: themeMode == ThemeMode.light
            ? AppTheme.light.backgroundColor
            : AppTheme.dark.backgroundColor,
        systemNavigationBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
      ),
    );
  }

  static TextStyle textStyle(TextStyle? textStyle) {
    if (textStyle == null) {
      return const TextStyle();
    }
    return textStyle.copyWith(
      height: letterHeight,
      letterSpacing: letterSpacing,
    );
  }
}
