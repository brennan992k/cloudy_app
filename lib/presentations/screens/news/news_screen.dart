import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/widgets/custom_appbar.dart';
import 'package:cloudy_app/presentations/widgets/icon_info.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.buildAppBarWithBack(context, 'News', actions: [
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
      ]),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          ViewImage(
                            borderRadius:
                                BorderRadius.all(AppTheme.borderRadius),
                            image: const AssetImage(Assets.news),
                            width: MediaQuery.of(context).size.width - 40,
                            height: 180,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'WC Channel',
                                textAlign: TextAlign.left,
                                style: AppTheme.textStyle(
                                  Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 5,
                                height: 5,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(54, 59, 100, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.elliptical(5, 5)),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '14 minutes ago',
                                textAlign: TextAlign.left,
                                style: AppTheme.textStyle(
                                  Theme.of(context).textTheme.bodySmall,
                                ).copyWith(
                                  color: const Color.fromRGBO(160, 152, 174, 1),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // Figma Flutter Generator TitleWidget - GROUP
                          Text(
                            'Here’s what to expect from Tuesday weather forecast',
                            textAlign: TextAlign.left,
                            style: AppTheme.textStyle(
                              Theme.of(context).textTheme.headline6,
                            ).copyWith(
                              color: const Color.fromRGBO(54, 59, 100, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'The contrast and colors employed when designing user interface elements can have a huge impact on their accessibility to all end-users. Relying solely on color distinctions limits the ability of color blind individuals to use your product. Using light and dark colors combined with techniques such as cross-hatching to differentiate part of the interface make it more accessible for users with vision issues. This design mentality can result in more interesting and usable interfaces for all of your users.',
                            textAlign: TextAlign.left,
                            style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodyMedium,
                            ).copyWith(
                              color: const Color.fromRGBO(54, 59, 100, 1),
                              letterSpacing: 0.3,
                              fontWeight: FontWeight.normal,
                              height: 1.7,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Nature and art are resources for color inspiration in UI concepts that you would be wise to use.',
                            textAlign: TextAlign.left,
                            style: AppTheme.textStyle(
                              Theme.of(context).textTheme.bodyMedium,
                            ).copyWith(
                              color: const Color.fromRGBO(54, 59, 100, 1),
                              letterSpacing: 0.3,
                              fontWeight: FontWeight.normal,
                              height: 1.7,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 30,
                  right: 20,
                  left: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: AppTheme.borderRadius,
                    bottomRight: AppTheme.borderRadius,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Weather News',
                      style: AppTheme.textStyle(
                        Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: const Color.fromRGBO(54, 59, 100, 1),
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: IconInfo(
                        icon: SvgPicture.asset(
                          Assets.share,
                          semanticsLabel: 'vector',
                        ),
                        info: Text(
                          'Share it',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                color: const Color.fromRGBO(160, 152, 174, 1),
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
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
