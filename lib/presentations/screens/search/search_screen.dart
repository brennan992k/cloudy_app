import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/widgets/custom_appbar.dart';
import 'package:cloudy_app/presentations/widgets/custom_input.dart';
import 'package:cloudy_app/presentations/widgets/view_google_map.dart';
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
                  // const CustomInput(),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // ViewGoogleMap(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
