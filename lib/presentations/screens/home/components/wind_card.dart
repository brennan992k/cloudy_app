import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WindCard extends StatelessWidget {
  const WindCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundCard(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 90 / 100,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: MediaQuery.of(context).size.width * 5 / 100,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Partly Cloudly',
                      style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodySmall)
                          .copyWith(
                        color: const Color.fromRGBO(160, 152, 174, 1),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'August, 10th 2020',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
                SvgPicture.asset(
                  Assets.jammenu,
                  semanticsLabel: 'vector',
                  width: 24,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.wind,
                      semanticsLabel: 'vector',
                      color: Colors.black,
                      width: 24,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wind',
                          style: AppTheme.textStyle(
                                  Theme.of(context).textTheme.bodyMedium)
                              .copyWith(
                            color: const Color.fromRGBO(160, 152, 174, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '124mp/H',
                          style: AppTheme.textStyle(
                                  Theme.of(context).textTheme.bodyMedium)
                              .copyWith(
                            color: const Color.fromRGBO(54, 59, 100, 1),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Barrometter',
                      style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodyMedium)
                          .copyWith(
                        color: const Color.fromRGBO(160, 152, 174, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '972 mBar',
                      style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodyLarge)
                          .copyWith(
                        color: const Color.fromRGBO(54, 59, 100, 1),
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
