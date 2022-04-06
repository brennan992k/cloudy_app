import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/widgets/custom_appbar.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:cloudy_app/presentations/widgets/swticher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.buildAppBarWithBack(context, 'Settings'),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              RoundCard(
                title: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'Units',
                    style: AppTheme.textStyle(
                            Theme.of(context).textTheme.bodyLarge)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Weather',
                        style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      trailing: Switcher(
                        value: true,
                        onToggle: (value) {},
                        activeText: 'C',
                        inactiveText: 'F',
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Weather',
                        style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      trailing: Switcher(value: true, onToggle: (value) {}),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundCard(
                title: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'Apps',
                    style: AppTheme.textStyle(
                            Theme.of(context).textTheme.bodyLarge)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'WeatherPro',
                        style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      leading: SvgPicture.asset(
                        Assets.promo,
                        semanticsLabel: 'vector',
                        width: 24,
                        height: 24,
                        color: Colors.black,
                      ),
                      trailing: SvgPicture.asset(
                        Assets.arrowleft,
                        semanticsLabel: 'vector',
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'About Weather app',
                        style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      leading: SvgPicture.asset(
                        Assets.promo,
                        semanticsLabel: 'vector',
                        width: 24,
                        height: 24,
                        color: Colors.black,
                      ),
                      trailing: SvgPicture.asset(
                        Assets.arrowleft,
                        semanticsLabel: 'vector',
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Share',
                        style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      leading: SvgPicture.asset(
                        Assets.promo,
                        semanticsLabel: 'vector',
                        width: 24,
                        height: 24,
                        color: Colors.black,
                      ),
                      trailing: SvgPicture.asset(
                        Assets.arrowleft,
                        semanticsLabel: 'vector',
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Join with us',
                        style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      leading: SvgPicture.asset(
                        Assets.promo,
                        semanticsLabel: 'vector',
                        width: 24,
                        height: 24,
                        color: Colors.black,
                      ),
                      trailing: SvgPicture.asset(
                        Assets.arrowleft,
                        semanticsLabel: 'vector',
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Mobile data limit',
                        style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      leading: SvgPicture.asset(
                        Assets.promo,
                        semanticsLabel: 'vector',
                        width: 24,
                        height: 24,
                        color: Colors.black,
                      ),
                      trailing: SvgPicture.asset(
                        Assets.arrowleft,
                        semanticsLabel: 'vector',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundCard(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Review',
                        style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      trailing: SvgPicture.asset(
                        Assets.arrowleft,
                        semanticsLabel: 'vector',
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Feedback',
                        style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      trailing: SvgPicture.asset(
                        Assets.arrowleft,
                        semanticsLabel: 'vector',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
