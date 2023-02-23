import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
import './quiz.dart';

class Result extends StatelessWidget {
final int resultScore;
final Function resetHandler;

Result(this.resultScore , this.resetHandler);
String get resultPhrase
{
  var resultText='You did it !';
  if(resultScore<=8)
    {
      resultText='You are awesome and innocent !';
    }
  else if(resultScore <=12)
    {
      resultText='Pretty Likeable';
    }
  else if(resultScore <=16)
    {
      resultText='you are so strange';
    }
  else
    {
      resultText='you are so Bad';
    }
  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       children:<Widget>[
          Text(
          resultPhrase,style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold)
    ),
         TextButton(
           child:Text("Restart Quiz" ,),
            //textColor:Colors.blue,
           style: TextButton.styleFrom(primary: Colors.yellow),
            onPressed:resetHandler,
         )
      ],
    ),
    );
  }
}
