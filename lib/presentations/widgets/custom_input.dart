import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({Key? key}) : super(key: key);

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(),
    );
  }
}
