import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
/*void main (){
  runApp(MyApp());  //basically run flutter app
}*/

void main() => runApp(MyApp());

class MyApp extends  StatefulWidget {
  @override
  State<StatefulWidget> createState()
  {
    return _MyAppState();  // underscore _ convert class public to private
  }

}
class _MyAppState extends State<MyApp>
{
  final _questions =const [
    {
      'questionText':'what\'s your favourite color ?',
      'answers':[{'text': 'Black' ,'score':10 },
        {'text':'Red', 'score':5},
        {'text':'Green','score':3},
        {'text':'White','score':1}
      ],
    },
    {
      'questionText':'what\'s your favourite animal ?',
      'answers':[{'text':'Rabbit', 'score': 12},{'text':'Snake' , 'score':12},{'text':'Elephent','score':15},{'text':'Lion','score':6},
      ],
    },
    {
      'questionText':'what\'s your favourite instructor ?',
      'answers':[{'text':'jivan','score': 10},{'text':'Chinkal','score':10},{'text':'arshad','score':10},{'text':'sandip','score':10},
      ],
    },
  ];
  var _questionIndex=0;
  var _totalScore=0;

  void _answerQuestion(int score){
    _totalScore=_totalScore+score;
    setState(( ){
      _questionIndex = _questionIndex+1;

    });
    if(_questionIndex < _questions.length)
    {
      print('We Have More Questions');

    }
    else
      {
        print('No More Questions ');
      }

    print('Answer Chosen!');
    print(_questionIndex);
  }

  void _resetQuiz()
  {
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }


  @override
  Widget build(BuildContext context) {
   /* var question = ['what\'s your favourite color?',
    'what\'s your favourite animal ?',
    ];*/

    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(title: Text("My First Udemy App")
          ),
          body: _questionIndex < _questions.length ?
              Quiz( answerquestions: _answerQuestion, questionindex: _questionIndex,questions: _questions,
              )

           :Result(_totalScore, _resetQuiz),

    ) ,
        );
  }
}
