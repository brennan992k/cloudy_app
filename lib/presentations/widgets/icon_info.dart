import 'package:flutter/material.dart';

enum IconInfoPosition { top, left, bottom, right }

class IconInfo extends StatelessWidget {
  const IconInfo({
    Key? key,
    this.info,
    this.subInfo,
    required this.icon,
    this.color,
    this.size = 100,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.position = IconInfoPosition.right,
    this.minSpacing = 5,
  }) : super(key: key);

  final Widget? info;
  final Widget? subInfo;
  final Widget icon;
  final Color? color;
  final double? size;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final IconInfoPosition position;
  final double? minSpacing;

  Widget _build(Widget? child) {
    switch (position) {
      case IconInfoPosition.top:
      case IconInfoPosition.bottom:
        return Column(
          mainAxisSize: mainAxisSize,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: _shouldReverse(position == IconInfoPosition.top, child),
        );
      case IconInfoPosition.left:
      case IconInfoPosition.right:
        return Row(
          mainAxisSize: mainAxisSize,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: _shouldReverse(position == IconInfoPosition.left, child),
        );
    }
  }

  List<Widget> _shouldReverse(bool should, Widget? child) {
    final l = <Widget>[
      if (subInfo != null) subInfo!,
      if (subInfo != null)
        SizedBox(
          width: minSpacing,
        ),
      if (info != null) child ?? const SizedBox(),
      if (info != null)
        SizedBox(
          width: minSpacing,
        ),
      if (info != null) info!,
    ];
    if (should) return l.reversed.toList();
    return l;
  }

  @override
  Widget build(BuildContext context) {
    return _build(icon);
  }
}
