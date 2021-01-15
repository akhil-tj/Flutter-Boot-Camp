import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

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
  var _questionNo = 0;
  // ignore: unused_field
  var _totalScore = 0;
  var _questionList = [
    {
      'questionText': 'What is your name?',
      'answer': [
        {'text': 'Akhil', 'score': 10},
        {'text': 'Athira', 'score': 5},
        {'text': 'Jayaprakash', 'score': 2},
        {'text': 'Sandhya', 'score': 1}
      ],
    },
    {
      'questionText': 'What is your age?',
      'answer': [
        {'text': '18', 'score': 1},
        {'text': '19', 'score': 5},
        {'text': '20', 'score': 10},
        {'text': '21', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your fav colour?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 2},
        {'text': 'Red', 'score': 1}
      ],
    },
  ];
  void _questionUpdate(int score) {
    _totalScore += score;

    setState(() {
      _questionNo++;
    });
  }

  void _resetQuizFun() {
    setState(() {
      _totalScore = 0;
      _questionNo = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _questionNo < _questionList.length
        ? Quiz(
            questionList: _questionList,
            questionNo: _questionNo,
            questionUpdate: _questionUpdate,
          )
        : Result(_totalScore, _resetQuizFun);
  }
}
