import 'package:flutter/material.dart';
import 'package:quiz_app/custom_text.dart';
import 'package:quiz_app/outline_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 60.0,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
        ),
        CustomText("Learn Flutter the fun way!"),
        CustomOutlinedButton(
          child: Text(
            'Start Quizz',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
