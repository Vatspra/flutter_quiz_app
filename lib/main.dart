import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/answer.dart';
import 'package:flutter_basic_quiz_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  final quetions = const [
    {
      'questionTet': 'Your Favorite color',
      'answers': ['Black', 'White', 'Green', 'Blue']
    },
    {
      'questionTet': 'Your Favorite Food',
      'answers': ['Veg', 'Nonveg']
    }
  ];
  void _answerQuestion() {
    if (index < quetions.length) {
      setState(() {
        index++;
      });
    }
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: this.index < this.quetions.length
            ? Column(
                children: [
                  Question(quetions[index]['questionTet']),
                  ...(quetions[index]['answers'] as List<String>).map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text(' Thank you', style: TextStyle(fontSize: 40)),
              ),
      ),
    );
  }
}
