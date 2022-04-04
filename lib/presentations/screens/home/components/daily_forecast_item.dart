import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/screens/home/components/fahrenheit.dart';
import 'package:cloudy_app/presentations/widgets/icon_info.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';

class DailyForecastItem extends StatelessWidget {
  const DailyForecastItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconInfo(
            icon: const ViewImage(
              width: 30,
              height: 30,
              image: AssetImage(Assets.w1),
            ),
            info: Text(
              'Monday',
              style: AppTheme.textStyle(
                Theme.of(context).textTheme.bodyMedium,
              ).copyWith(
                color: const Color.fromRGBO(54, 59, 100, 1),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Fahrenheit(
                fahrenheit: '72',
                hideF: true,
                width: 30,
                style: AppTheme.textStyle(
                  Theme.of(context).textTheme.bodyMedium,
                ).copyWith(
                  color: const Color.fromRGBO(54, 59, 100, 1),
                ),
                fStyle: AppTheme.textStyle(
                  Theme.of(context).textTheme.bodyMedium,
                ).copyWith(
                  color: const Color.fromRGBO(54, 59, 100, 1),
                ),
              ),
              Fahrenheit(
                fahrenheit: '28',
                width: 30,
                hideF: true,
                style: AppTheme.textStyle(
                  Theme.of(context).textTheme.bodyMedium,
                ).copyWith(
                  color: const Color.fromRGBO(54, 59, 100, 1),
                ),
                fStyle: AppTheme.textStyle(
                  Theme.of(context).textTheme.bodyMedium,
                ).copyWith(
                  color: const Color.fromRGBO(54, 59, 100, 1),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
