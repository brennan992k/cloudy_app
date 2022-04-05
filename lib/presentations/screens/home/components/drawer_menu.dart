import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/widgets/icon_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(
          left: AppTheme.spacing1,
          top: 80,
          bottom: AppTheme.spacing1,
          right: AppTheme.spacing1),
      decoration: BoxDecoration(gradient: AppTheme.linearGradientColor1),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current location',
              style: AppTheme.textStyle(Theme.of(context).textTheme.bodySmall)
                  .copyWith(color: Colors.white),
            ),
            SizedBox(
              height: AppTheme.spacing1,
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
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoute.addLocationRoute);
              },
              child: IconInfo(
                icon: SvgPicture.asset(Assets.location,
                    semanticsLabel: 'vector',
                    color: const Color.fromRGBO(251, 249, 158, 1)),
                info: Text(
                  'Add location',
                  style:
                      AppTheme.textStyle(Theme.of(context).textTheme.bodyMedium)
                          .copyWith(
                              color: const Color.fromRGBO(251, 249, 158, 1)),
                ),
              ),
            ),
            SizedBox(
              height: AppTheme.spacing1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoute.addLocationRoute);
              },
              child: IconInfo(
                icon: SvgPicture.asset(
                  Assets.location,
                  semanticsLabel: 'vector',
                ),
                info: Text(
                  'Berlin, Germany',
                  style:
                      AppTheme.textStyle(Theme.of(context).textTheme.bodyMedium)
                          .copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: AppTheme.spacing1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoute.addLocationRoute);
              },
              child: IconInfo(
                icon: SvgPicture.asset(
                  Assets.location,
                  semanticsLabel: 'vector',
                ),
                info: Text(
                  'Liverpool, UK',
                  style:
                      AppTheme.textStyle(Theme.of(context).textTheme.bodyMedium)
                          .copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: AppTheme.spacing1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoute.addLocationRoute);
              },
              child: IconInfo(
                icon: SvgPicture.asset(
                  Assets.location,
                  semanticsLabel: 'vector',
                ),
                info: Text(
                  'Washington, USA',
                  style:
                      AppTheme.textStyle(Theme.of(context).textTheme.bodyMedium)
                          .copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Settings',
                style: AppTheme.textStyle(Theme.of(context).textTheme.bodyLarge)
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(
              height: AppTheme.spacing1,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Share this app',
                style: AppTheme.textStyle(Theme.of(context).textTheme.bodyLarge)
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(
              height: AppTheme.spacing1,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Rate this app',
                style: AppTheme.textStyle(Theme.of(context).textTheme.bodyLarge)
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
