// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/l10n/l10n.dart';
import 'package:cloudy_app/logic/app_theme/app_theme_cubit.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AppThemeCubit())],
      child: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({
    Key? key,
  }) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    context.read<AppThemeCubit>().onChangePlatformBrightness();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: context.select<AppThemeCubit, ThemeMode>(
        (appThemeCubit) => appThemeCubit.state.themeMode,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: AppRoute.initialRoute,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
