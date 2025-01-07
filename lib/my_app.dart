import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        child: StartScreen(),
      ),
    );
  }
}
