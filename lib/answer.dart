import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
//final Function selectHandler;
final VoidCallback selectHandler;
final String answerText;

Answer(this.selectHandler , this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:ElevatedButton(
        style: ElevatedButton.styleFrom(
          //backgroundColor: MaterialStateProperty.all(Colors.orange),
          //foregroundColor: MaterialStateProperty.all(Colors.white)
          primary: Colors.orange, onPrimary: Colors.white

        ),
        child:Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
