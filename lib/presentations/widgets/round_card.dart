import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class RoundCard extends StatelessWidget {
  const RoundCard({
    Key? key,
    required this.child,
    this.title,
    this.height,
    this.width,
    this.margin,
    this.color,
    this.gradient,
    this.padding = const EdgeInsets.all(20),
  }) : super(key: key);

  final Widget? title;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final Gradient? gradient;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final Widget main = Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(AppTheme.borderRadius),
        gradient: gradient,
        color: color,
      ),
      child: child,
    );
    if (title != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title!,
          const SizedBox(
            height: 10,
          ),
          main
        ],
      );
    }
    return main;
  }
}
