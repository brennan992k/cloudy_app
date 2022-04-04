import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/screens/home/components/fahrenheit.dart';
import 'package:cloudy_app/presentations/widgets/icon_info.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';

class HourForecastItem extends StatelessWidget {
  const HourForecastItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconInfo(
      position: IconInfoPosition.bottom,
      icon: const ViewImage(
        width: 30,
        height: 30,
        image: AssetImage(Assets.w1),
      ),
      info: Fahrenheit(
        fahrenheit: '72',
        width: 35,
        style: AppTheme.textStyle(
          Theme.of(context).textTheme.bodyMedium,
        ).copyWith(
          color: const Color.fromRGBO(54, 59, 100, 1),
        ),
        fStyle: AppTheme.textStyle(
          Theme.of(context).textTheme.bodySmall,
        ).copyWith(
          color: const Color.fromRGBO(54, 59, 100, 1),
        ),
      ),
      subInfo: Text(
        '2PM',
        style: AppTheme.textStyle(
          Theme.of(context).textTheme.bodySmall,
        ).copyWith(color: const Color.fromRGBO(160, 152, 174, 1)),
      ),
    );
  }
}
