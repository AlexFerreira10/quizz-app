import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question...'),
          const SizedBox(height: 30),
          AnswerButton(
            text: "Question 1....",
            onTap: () {},
          ),
          AnswerButton(
            text: "Question 2....",
            onTap: () {},
          ),
          AnswerButton(
            text: "Question 3....",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
