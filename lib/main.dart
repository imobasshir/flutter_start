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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex]['questionText'].toString(),
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
