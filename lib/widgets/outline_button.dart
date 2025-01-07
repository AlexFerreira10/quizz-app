import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final Widget text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      iconAlignment: IconAlignment.end,
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
      icon: const Icon(
        Icons.arrow_right_alt,
        color: Colors.deepOrange,
        size: 35.0,
      ),
      label: text,
    );
  }
}
