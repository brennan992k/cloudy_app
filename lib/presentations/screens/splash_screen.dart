import 'dart:async';

import 'package:cloudy_app/core/constants/assets.dart';
import 'package:cloudy_app/core/theme/app_theme.dart';
import 'package:cloudy_app/presentations/routes/app_route.dart';
import 'package:cloudy_app/presentations/widgets/view_image.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _opcity;
  late Animation<double> _size;
  late Animation<double> _offsetY;

  void _initAnimation() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _opcity = Tween<double>(begin: 0, end: 1).animate(_controller);

    _size = TweenSequence<double>([
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 80, end: 160),
        weight: 40,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 160, end: 120),
        weight: 30,
      ),
    ]).animate(_controller);

    _offsetY = Tween<double>(begin: -20, end: 0).animate(_controller);

    _controller.forward();

    // ignore: cascade_invocations
    _controller.addListener(() {
      // setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    _initAnimation();

    Timer(const Duration(seconds: 1), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(AppRoute.homeRoute, (route) => false);
      // Do something
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppTheme.linearGradientColor1,
      ),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedBuilder(
                animation: _controller,
                builder: (context, _) {
                  return ViewImage(
                    boxshadow: [AppTheme.shadowColor1],
                    width: _size.value,
                    height: _size.value,
                    image: const AssetImage(Assets.cloud),
                  );
                },
              ),
              Transform.scale(
                scale: _opcity.value,
                child: Transform.translate(
                  offset: Offset(0, _offsetY.value),
                  child: Opacity(
                    opacity: _opcity.value,
                    child: Text(
                      'Cloudy',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyle(
                              Theme.of(context).textTheme.headline3)
                          .copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Opacity(
                opacity: _opcity.value,
                child: Text(
                  'Dont worry about \n the weather we all here',
                  textAlign: TextAlign.center,
                  style:
                      AppTheme.textStyle(Theme.of(context).textTheme.bodyMedium)
                          .copyWith(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
