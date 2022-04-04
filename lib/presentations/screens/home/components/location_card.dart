import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RoundCard(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 90 / 100,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: MediaQuery.of(context).size.width * 5 / 100,
      ),
      child: Column(
        children: [
          ViewImage(
            borderRadius: BorderRadius.only(
              topLeft: AppTheme.borderRadius,
              topRight: AppTheme.borderRadius,
            ),
            image: const AssetImage(Assets.mapweather),
            width: MediaQuery.of(context).size.width * 90 / 100,
            height: 160,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodySmall)
                          .copyWith(
                        color: const Color.fromRGBO(160, 152, 174, 1),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'New York, USA',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
                SvgPicture.asset(
                  Assets.locationmenu,
                  semanticsLabel: 'vector',
                  width: 24,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
