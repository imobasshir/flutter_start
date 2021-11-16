import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s yout favorate color?',
      'answers': ['Black', 'Blue', 'Red', 'Green', 'White', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favorate food?',
      'answers': ['Rice', 'Bread', 'Noodles', 'Biscuits', 'Meat'],
    },
    {
      'questionText': 'What\'s your favorate animal?',
      'answers': ['Beer', 'Cat', 'Dog', 'Goat', 'Lion', 'Tiger'],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('we have more questions');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < questions.length
          ? Column(
              children: [
                Question(
                  questions[_questionIndex]['questionText'] as String,
                ),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )
          : Center(
              child: Text('You did it!'),
            ),
    ));
  }
}
