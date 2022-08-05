import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}
// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
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
      "Do You Love Kuty ?",
      "What's is Favorite Bike ?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Datamoo.ai'),
        ),
        // body: Text('Welcome to datamoo ai'),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: _answerQuestion,
              child: Text('TextButton'),
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print('Answer 2 Chosen '),
            ),
            RaisedButton(
              child: Text("Answer 3 "),
              onPressed: () {
                // .....
                print("Answer 3 Chossen1");
                print("Answer 3 Chossen2");
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => null,
        ),
      ),
    );
  }
}
