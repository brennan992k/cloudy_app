import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/screens/add_city/components/city_item.dart';
import 'package:cloudy_app/presentations/widgets/custom_appbar.dart';
import 'package:cloudy_app/presentations/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddCityScreen extends StatelessWidget {
  const AddCityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.buildAppBarWithBack(
        context,
        'Add City',
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
      body: Padding(
          padding: EdgeInsets.all(AppTheme.spacing1),
          child: Column(
            children: [
              const SearchInput(
                placeholder: 'Enter cities',
              ),
              SizedBox(
                height: AppTheme.spacing1,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                    CityItem(),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
