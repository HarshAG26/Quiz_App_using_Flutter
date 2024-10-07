import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          height: 400,
        ),
        const Center(
          child: Text(
            'Learn Flutter The Fun Way !',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_forward_ios_rounded),
          label: const Text('Start Here'),
        ),
      ],
    );
  }
}
