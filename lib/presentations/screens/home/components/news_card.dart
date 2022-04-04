import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/widgets/round_card.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(AppRoute.newsRoute),
      child: RoundCard(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 90 / 100,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 5 / 100,
        ),
        child: Column(
          children: [
            ViewImage(
              borderRadius: BorderRadius.only(
                topLeft: AppTheme.borderRadius,
                topRight: AppTheme.borderRadius,
              ),
              image: const AssetImage(Assets.news),
              width: MediaQuery.of(context).size.width * 90 / 100,
              height: 110,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Here’s what to expect from Tuesday weather forecast',
                textAlign: TextAlign.left,
                style:
                    AppTheme.textStyle(Theme.of(context).textTheme.bodyLarge),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '14 minutes ago',
                    style: AppTheme.textStyle(
                            Theme.of(context).textTheme.bodySmall)
                        .copyWith(
                      color: const Color.fromRGBO(160, 152, 174, 1),
                    ),
                  ),
                  Text(
                    'WC Channel',
                    style: AppTheme.textStyle(
                            Theme.of(context).textTheme.bodySmall)
                        .copyWith(
                      color: const Color.fromRGBO(54, 59, 100, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
