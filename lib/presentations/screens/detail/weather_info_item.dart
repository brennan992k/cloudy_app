import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherInfoItem extends StatelessWidget {
  const WeatherInfoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundCard(
      width: (MediaQuery.of(context).size.width - 60) / 2,
      color: Colors.white,
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.location,
            semanticsLabel: 'vector',
            color: Colors.black,
            width: 24,
          ),
          SizedBox(
            width: AppTheme.spacing2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Park Slope',
                textAlign: TextAlign.left,
                style: AppTheme.textStyle(
                  Theme.of(context).textTheme.bodyLarge,
                ).copyWith(
                  color: const Color.fromRGBO(54, 59, 100, 1),
                ),
              ),
              SizedBox(
                height: AppTheme.spacing2,
              ),
              Text(
                'New York, USA',
                textAlign: TextAlign.left,
                style: AppTheme.textStyle(
                  Theme.of(context).textTheme.bodySmall,
                ).copyWith(
                  color: const Color.fromRGBO(160, 152, 174, 1),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
