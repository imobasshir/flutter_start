import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s yout favorate color?',
      'What\'s your favorate animal?',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () => print('answer 2 chosen'),
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {
              // ....
              print('answer 3 chosen');
            },
            child: Text('Answer 3'),
          ),
        ],
      ),
    ));
  }
}
