import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(questionText);
    // return MaterialApp(
    //     home: Scaffold(
    //     appBar: AppBar(
    //     title: Text("test"),
    //   ),
    // ));
  }
}
