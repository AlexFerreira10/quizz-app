import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  late int currentQuestion;

  @override
  void initState() {
    super.initState();
    currentQuestion = 0;
  }

  void nextQuestion(String selectAnswer) {
    widget.onSelectAnswer(selectAnswer);

    setState(() {
      currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[this.currentQuestion];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                text: answer,
                onTap: () {
                  nextQuestion(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
