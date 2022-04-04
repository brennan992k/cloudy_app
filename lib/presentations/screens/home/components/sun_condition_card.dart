import 'dart:math' as math;
import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SunConditionCard extends StatelessWidget {
  const SunConditionCard({Key? key}) : super(key: key);

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
                      'Conditions',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodySmall,
                      ).copyWith(
                        color: const Color.fromRGBO(160, 152, 174, 1),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Sun',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'UV index',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodySmall,
                      ).copyWith(
                        color: const Color.fromRGBO(160, 152, 174, 1),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '0.3',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 79,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 154,
                    child: SizedBox(
                      width: 32,
                      height: 32,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 3.5,
                            left: 4.7,
                            child: SvgPicture.asset(
                              Assets.drawermenu,
                              semanticsLabel: 'vector',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 2,
                      // width: 163,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Color.fromRGBO(54, 59, 100, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 43,
                    left: 0,
                    child: Text(
                      '03:15 AM',
                      textAlign: TextAlign.left,
                      style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodySmall)
                          .copyWith(
                        color: const Color.fromRGBO(54, 59, 100, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 43,
                    left: 245,
                    child: Text(
                      '06:15 PM',
                      textAlign: TextAlign.left,
                      style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodySmall)
                          .copyWith(
                        color: const Color.fromRGBO(54, 59, 100, 1),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 32,
                    left: 163.44752502441406,
                    child: SizedBox(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
