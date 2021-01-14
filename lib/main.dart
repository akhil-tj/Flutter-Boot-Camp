import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  var questionNo = 0;
  var questionList = [
    {
      'questionText': 'What is your name?',
      'answer': ['Akhil', 'Athira', 'Sandhya', 'Jayaprakash'],
    },
    {
      'questionText': 'What is your age?',
      'answer': ['18', '19', '20', '21'],
    },
    {
      'questionText': 'What\'s your fav colour?',
      'answer': ['Black', 'Blue', 'Green', 'Red'],
    },
  ];
  void questionUpdate() {
    setState(() {
      questionNo++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return questionNo < questionList.length
        ? Column(
            children: [
              Question(
                questionList[questionNo]['questionText'],
              ),
              ...(questionList[questionNo]['answer'] as List<String>)
                  .map((answer) {
                return Answer(questionUpdate, answer);
              }).toList()
            ],
          )
        : Center(
            child: Text(
              'You did it',
            ),
          );
  }
}
