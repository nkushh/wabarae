import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(Wabarae());

class Wabarae extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WabaraeState();
  }
}

class WabaraeState extends State<Wabarae> {
  var questionIndex = 0;
  // Function that increments index each time a button is pressed to move to the next list index element
  void answerQuestion() {
    setState(() {
      if (questionIndex == questions.length - 1) {
        questionIndex = 0;
      } else {
        questionIndex = questionIndex + 1;
      }
    });
  }

  // List of questions to be called each time a button is pressed
  var questions = [
    "What is your consumption target?",
    "How often do you want to hydrate?",
    "Is the stop date tentative?"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WabaRae'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            ElevatedButton(child: Text("Answer 1"), onPressed: answerQuestion),
            ElevatedButton(child: Text("Answer 2"), onPressed: answerQuestion),
            ElevatedButton(child: Text("Answer 3"), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
