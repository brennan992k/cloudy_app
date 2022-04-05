import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/screens/home/components/fahrenheit.dart';
import 'package:cloudy_app/presentations/widgets/custom_appbar.dart';
import 'package:cloudy_app/presentations/widgets/icon_info.dart';
import 'package:cloudy_app/presentations/widgets/search_input.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.buildAppBarWithBack(
        context,
        'News',
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.settingsRoute);
            },
            child: SvgPicture.asset(
              Assets.setting,
              width: 24,
              semanticsLabel: 'vector',
            ),
          )
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(AppTheme.spacing1),
                    child: const SearchInput(
                      placeholder: 'Enter cities',
                    ),
                  ),
                  ViewImage(
                    image: const AssetImage(Assets.mapsweather),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 180,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(AppTheme.spacing1),
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: AppTheme.borderRadius,
                    topRight: AppTheme.borderRadius,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
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
                                    color:
                                        const Color.fromRGBO(160, 152, 174, 1),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        IconInfo(
                          icon: const ViewImage(
                            width: 30,
                            height: 30,
                            image: AssetImage(Assets.w1),
                          ),
                          info: Fahrenheit(
                            fahrenheit: '72',
                            hideF: true,
                            width: 30,
                            style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodyLarge,
                            ).copyWith(
                              color: const Color.fromRGBO(54, 59, 100, 1),
                            ),
                            fStyle: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodySmall,
                            ).copyWith(
                              color: const Color.fromRGBO(54, 59, 100, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppTheme.spacing1,
                    ),
                    const Divider(
                      height: 1,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: AppTheme.spacing1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Longitude and latitude',
                              textAlign: TextAlign.left,
                              style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodySmall,
                              ).copyWith(
                                color: const Color.fromRGBO(160, 152, 174, 1),
                              ),
                            ),
                            SizedBox(
                              height: AppTheme.spacing2,
                            ),
                            Text(
                              '52.498611, 13.406889',
                              textAlign: TextAlign.left,
                              style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge,
                              ).copyWith(
                                color: const Color.fromRGBO(54, 59, 100, 1),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wind',
                              textAlign: TextAlign.left,
                              style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodySmall,
                              ).copyWith(
                                color: const Color.fromRGBO(160, 152, 174, 1),
                              ),
                            ),
                            SizedBox(
                              height: AppTheme.spacing2,
                            ),
                            Text(
                              '134 mp/h',
                              textAlign: TextAlign.left,
                              style: AppTheme.textStyle(
                                Theme.of(context).textTheme.bodyLarge,
                              ).copyWith(
                                color: const Color.fromRGBO(54, 59, 100, 1),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
