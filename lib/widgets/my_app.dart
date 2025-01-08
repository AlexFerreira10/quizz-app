import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/questions_screen.dart';
import 'package:quiz_app/widgets/start_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 64, 20, 139),
              const Color.fromARGB(255, 75, 40, 136)
            ],
          ),
        ),
        child: activeScreen,
      ),
    );
  }
}
