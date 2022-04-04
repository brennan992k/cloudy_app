import 'package:bloc/bloc.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeState(themeMode: AppTheme.themeMode));

  void onChangePlatformBrightness() {
    final themeMode = AppTheme.themeMode;
    AppTheme.setStatusBarAndNavigationBarColor(themeMode);
    _setState(themeMode);
  }

  void _setState(ThemeMode themeMode) {
    emit(AppThemeState(themeMode: themeMode));
  }
}
