import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultFinal;
  Function resetHandler;

  Result(this.resultFinal, this.resetHandler);

  String get resultPhrase {
    String tempText;
    if (resultFinal <= 20) {
      tempText = 'Poor';
    } else {
      tempText = 'Awsm';
    }
    print(tempText);
    return tempText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text('Reset Quiz'),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
