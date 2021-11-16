import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 0) {
      resultText = 'You are innosent';
    } else if (resultScore <= 15) {
      resultText = 'Pretty Likable';
    } else if (resultScore <= 25) {
      resultText = 'You are so strange!!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 35,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Reset Quiz'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
