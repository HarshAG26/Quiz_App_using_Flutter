import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answertext, required this.onTap});

  // ignore: prefer_typing_uninitialized_variables
  final String answertext;
  final void Function() onTap;

  Widget build(context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            //padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
            backgroundColor: const Color.fromARGB(255, 6, 134, 238),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            answertext,
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
