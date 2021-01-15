import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionNo;
  final Function questionUpdate;

  Quiz({
    @required this.questionList,
    @required this.questionNo,
    @required this.questionUpdate,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionList[questionNo]['questionText'],
        ),
        ...(questionList[questionNo]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => questionUpdate(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
