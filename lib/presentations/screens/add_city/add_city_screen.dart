import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddCityScreen extends StatelessWidget {
  const AddCityScreen({Key? key}) : super(key: key);

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
    ]));
  }
}
