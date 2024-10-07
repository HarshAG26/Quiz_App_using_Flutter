import 'package:flutter/material.dart';
import 'package:quiz/question_screen.dart';
import 'package:quiz/results_screen.dart';
import 'package:quiz/start_screen.dart';
import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'Start-Screen';
  void changeScreen() {
    setState(() {
      activeScreen = 'Questions-Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        //selectedAnswer = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(changeScreen);
    if (activeScreen == 'Questions-Screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswer,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: screenWidget,
        ),
        backgroundColor: const Color.fromARGB(255, 138, 4, 204),
      ),
    );
  }
}
