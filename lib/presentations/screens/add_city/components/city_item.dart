import 'package:cloudy_app/app.dart';
import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CityItem extends StatelessWidget {
  const CityItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundCard(
        margin: EdgeInsets.symmetric(vertical: AppTheme.spacing2),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  Assets.location,
                  semanticsLabel: 'vector',
                  color: Colors.black,
                ),
                SizedBox(
                  width: AppTheme.spacing2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Longitude and latitude',
                      textAlign: TextAlign.left,
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(
                      height: AppTheme.spacing2,
                    ),
                    Text(
                      'Longitude and latitude',
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
            const ViewImage(
              width: 30,
              height: 30,
              image: AssetImage(Assets.w1),
            )
          ],
        ));
  }
}
