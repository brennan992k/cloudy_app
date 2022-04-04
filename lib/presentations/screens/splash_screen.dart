import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppTheme.linearGradientColor1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ViewImage(
            boxshadow: [AppTheme.shadowColor1],
            width: 120,
            height: 118,
            image: const AssetImage(Assets.cloud),
          ),
          Text(
            'Cloudy',
            textAlign: TextAlign.center,
            style: AppTheme.textStyle(Theme.of(context).textTheme.headline3)
                .copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Dont worry about \n the weather we all here',
            textAlign: TextAlign.center,
            style: AppTheme.textStyle(Theme.of(context).textTheme.bodyMedium)
                .copyWith(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
