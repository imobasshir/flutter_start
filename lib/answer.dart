import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({ Key? key }) : super(key: key);
  final Function() selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: selectHandler,
        child: Text('Answer 1'),
      ),
    );
  }
}
