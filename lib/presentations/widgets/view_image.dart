import 'package:flutter/material.dart';

class ViewImage extends StatelessWidget {
  const ViewImage({
    Key? key,
    required this.image,
    this.borderRadius,
    this.width,
    this.height,
    this.boxshadow,
  }) : super(key: key);

  final ImageProvider<Object> image;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxshadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: boxshadow,
        borderRadius: borderRadius,
        image: DecorationImage(
          image: image,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
