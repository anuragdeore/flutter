import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerquestions;
  final int questionindex ;

  Quiz(
      {@required this.questions, @required this.answerquestions, @required this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //[ ] list for square bracket
        //Text
        Question(
          //question.elementAt(1)
          //question[0],
          questions[questionindex] ['questionText'] as String,
        ),
        //ElevatedButton(onPressed: _answerQuestion , //onpressed is function which is void
        //child: Text('Answer 1'),
        //Answer(_answerQuestion)
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerquestions(answer['score']), answer['text']as String);
        }).toList()

        /*ElevatedButton( onPressed: ()=>print('Answer 2 Chosen'), child: Text('Answer 2'),
            ),
            ElevatedButton(onPressed: () {print('Answer 3 Chosen');}, child: Text('Answer 3'),
            )*/
      ],
    );
  }

}