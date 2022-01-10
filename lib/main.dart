import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    {
      'questionText': "What is your consumption target?",
      'questionAnswers': ['2 Ltrs', '4 Ltrs', '6 Ltrs']
    },
    {
      'questionText': "How often do you want to hydrate?",
      'questionAnswers': ['Every 1 Hrs', 'Every 2 Hrs', 'Every 3 Hrs']
    },
    {
      'questionText': "Is the stop date tentative?",
      'questionAnswers': ['Yes', 'No', 'I don\'t know']
    }
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
            Question(questions[questionIndex]['questionText']),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
