import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answer;
  Answer(this.answerHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: this.answerHandler,
        child: Text(this.answer),
      ),
    );
  }
}
