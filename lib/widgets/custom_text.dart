import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this._text, {super.key});

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(fontSize: 18.0, color: Colors.white),
    );
  }
}
