import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key, this.placeholder}) : super(key: key);
  final String? placeholder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppTheme.spacing1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(AppTheme.borderRadius),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: SvgPicture.asset(Assets.search, semanticsLabel: 'vector'),
          fillColor: Colors.white,
          border: InputBorder.none,
          hintText: placeholder,
        ),
      ),
    );
  }
}
