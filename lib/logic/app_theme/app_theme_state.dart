part of 'app_theme_cubit.dart';

@immutable
abstract class AppThemeStateI extends Equatable {
  const AppThemeStateI({
    required this.themeMode,
  });
  final ThemeMode themeMode;

  @override
  String toString() => 'AppThemeStateI(themeMode: $themeMode)';
}

class AppThemeState extends AppThemeStateI {
  const AppThemeState({required ThemeMode themeMode})
      : super(themeMode: themeMode);

  @override
  List<Object?> get props => [themeMode];
}
