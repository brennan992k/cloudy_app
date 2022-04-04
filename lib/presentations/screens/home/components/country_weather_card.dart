import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/screens/home/components/fahrenheit.dart';
import 'package:cloudy_app/presentations/widgets/icon_info.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CountryWeatherCard extends StatelessWidget {
  const CountryWeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(AppRoute.detailRoute),
      child: RoundCard(
        gradient: AppTheme.linearGradientColor1,
        width: MediaQuery.of(context).size.width * 80 / 100,
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 20 / 400,
          right: MediaQuery.of(context).size.width * 20 / 800,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Chance of rain 60%',
                      textAlign: TextAlign.left,
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodyMedium,
                      ).copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Partly Cloudy',
                      textAlign: TextAlign.left,
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.headline6,
                      ).copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                ViewImage(
                  boxshadow: [AppTheme.shadowColor1],
                  image: const AssetImage(Assets.cloudysun),
                  width: 55,
                  height: 50,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            IconInfo(
              icon: SvgPicture.asset(
                Assets.location,
                semanticsLabel: 'vector',
              ),
              info: Text(
                'Washington DC, USA',
                style:
                    AppTheme.textStyle(Theme.of(context).textTheme.bodyMedium)
                        .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Fahrenheit(
                  fahrenheit: '72',
                  style:
                      AppTheme.textStyle(Theme.of(context).textTheme.headline6)
                          .copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                  fStyle:
                      AppTheme.textStyle(Theme.of(context).textTheme.bodySmall)
                          .copyWith(color: Colors.white),
                ),
                const SizedBox(
                  width: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconInfo(
                      icon: SvgPicture.asset(
                        Assets.rain,
                        semanticsLabel: 'vector',
                        width: 14,
                      ),
                      info: Text(
                        '10%',
                        style: AppTheme.textStyle(
                          Theme.of(context).textTheme.bodySmall,
                        ).copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconInfo(
                      icon: SvgPicture.asset(
                        Assets.sun,
                        width: 14,
                        semanticsLabel: 'vector',
                      ),
                      info: Text(
                        '0.5',
                        style: AppTheme.textStyle(
                          Theme.of(context).textTheme.bodySmall,
                        ).copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconInfo(
                      icon: SvgPicture.asset(
                        Assets.wind,
                        width: 14,
                        semanticsLabel: 'vector',
                      ),
                      info: Text(
                        '124 mp/h',
                        style: AppTheme.textStyle(
                          Theme.of(context).textTheme.bodySmall,
                        ).copyWith(color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
