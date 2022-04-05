import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar {
  CustomAppBar._();

  static AppBar buildAppBarWithBack(
    BuildContext context,
    String title, {
    bool Function()? onGoBack,
    List<Widget>? actions,
  }) {
    return AppBar(
      leading: TextButton(
        onPressed: () {
          if (Navigator.of(context).canPop()) {
            if (onGoBack != null) {
              final shouldBack = onGoBack();
              if (shouldBack) {
                Navigator.of(context).pop();
              }
            } else {
              Navigator.of(context).pop();
            }
          }
        },
        child: SvgPicture.asset(
          Assets.back,
          width: 24,
          semanticsLabel: 'vector',
        ),
      ),
      actions: actions,
      title: Text(
        title,
        style: AppTheme.textStyle(Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }

  static SliverAppBar buildSliverAppBarWithBack(
      BuildContext context, String title,
      {bool Function()? onGoBack,
      List<Widget>? actions,
      bool pinned = true,
      bool snap = false,
      bool floating = false,
      double expandedHeight = 160,
      Widget? background}) {
    return SliverAppBar(
      leading: TextButton(
        onPressed: () {
          if (Navigator.of(context).canPop()) {
            if (onGoBack != null) {
              final shouldBack = onGoBack();
              if (shouldBack) {
                Navigator.of(context).pop();
              }
            } else {
              Navigator.of(context).pop();
            }
          }
        },
        child: SvgPicture.asset(
          Assets.back,
          width: 24,
          semanticsLabel: 'vector',
        ),
      ),
      actions: actions,
      pinned: pinned,
      snap: snap,
      floating: floating,
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          title,
          style: AppTheme.textStyle(Theme.of(context).textTheme.bodyLarge),
        ),
        background: background,
      ),
    );
  }
}
