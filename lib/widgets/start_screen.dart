import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_text.dart';
import 'package:quiz_app/widgets/outline_button.dart';

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
          color: const Color.fromARGB(150, 253, 253, 253),
        ),
        CustomText("Learn Flutter the fun way!"),
        CustomOutlinedButton(
          text: Text(
            'Start Quizz',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
