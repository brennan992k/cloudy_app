import 'package:cloudy_app/presentations/widgets/text_hat.dart';
import 'package:flutter/material.dart';

class Fahrenheit extends StatelessWidget {
  const Fahrenheit(
      {Key? key,
      required this.fahrenheit,
      this.fStyle = const TextStyle(),
      this.style = const TextStyle(),
      this.width = 45,
      this.hideF = false})
      : super(key: key);
  final String fahrenheit;
  final TextStyle fStyle;
  final TextStyle style;
  final double width;
  final bool hideF;

  @override
  Widget build(BuildContext context) {
    return TextHat(
      width: width,
      hat: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              border: Border.all(color: fStyle.color ?? Colors.white),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          if (hideF == false)
            Text(
              'F',
              textAlign: TextAlign.left,
              style: fStyle,
            )
        ],
      ),
      child: Text(
        fahrenheit,
        textAlign: TextAlign.left,
        style: style,
      ),
    );
  }
}
