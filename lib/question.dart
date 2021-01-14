import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionFromList;

  Question(this.questionFromList);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionFromList,
        style: TextStyle(
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
