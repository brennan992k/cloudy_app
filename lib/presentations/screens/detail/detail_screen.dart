import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/screens/detail/weather_info_item.dart';
import 'package:cloudy_app/presentations/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomAppBar.buildSliverAppBarWithBack(context, 'Berlin, Germany',
              pinned: _pinned, snap: _snap, floating: _floating),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: AppTheme.linearGradientColor1,
                borderRadius: BorderRadius.only(
                  bottomLeft: AppTheme.borderRadius,
                  bottomRight: AppTheme.borderRadius,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
