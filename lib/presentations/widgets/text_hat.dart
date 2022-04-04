import 'package:flutter/material.dart';

class TextHat extends StatelessWidget {
  const TextHat({
    Key? key,
    required this.child,
    required this.hat,
    this.width = 46,
    this.height = 20,
  }) : super(key: key);
  final Widget child;
  final Widget hat;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(top: 0, left: 0, child: child),
          Positioned(
            right: 0,
            top: 0,
            child: hat,
          ),
        ],
      ),
    );
  }
}
