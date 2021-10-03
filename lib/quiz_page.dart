import 'dart:math';

import 'package:flutter/material.dart';
import 'package:question_app/model.dart';

class QuizzApp extends StatefulWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {

  List<QuestionModel> listQuestionModel=[
    QuestionModel("Is Appbar's color is blue?", true),
    QuestionModel("Is background color is green?", false),
    QuestionModel("Is Appbar's color is blue?", true),
    QuestionModel("Is background color is green?", false),
    QuestionModel("Is Appbar's color is blue?", true),
    QuestionModel("Is background color is green?", false)
  ];






  /*
  List<String> question = [
    "Is Appbar's color is blue?",
    "Is background color is green?",
    "Is Appbar's color is blue?",
    "Is background color is green?"
  ];


  List<bool> answer = [true, false, true, false];
*/
  List<Widget> result = [
    // Icon(Icons.check,color:Colors.green),
    // Icon(Icons.close,color:Colors.red),
  ];
  int indexList = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              listQuestionModel[indexList].question,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "VarelaRound",
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                resAction(listQuestionModel[indexList].answer, true);
              },
              child: Text("Yes"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            ElevatedButton(
              onPressed: () {
                resAction(listQuestionModel[indexList].answer, false);
              },
              child: Text("No"),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            Row(
              children: result,
            )
          ],
        ),
      ),
    );
  }

  //للتأكد من اجابه المستخدم
  bool checkAnswer(bool correctAnswer, bool userAnswer) {
    if (correctAnswer == userAnswer) {
      return true;
    } else {
      return false;
    }
  }
//بتعمل مجموعة من الافعال التي تتكرر في حاله اجباة المستخدم ان كانت صحيحه ام خاطئة
  resAction(bool correctAnswer, bool userAnswer) {
    bool res = checkAnswer(correctAnswer, userAnswer);
    if (res==true) //r
        {
      setState(() {
        result.add(Icon(Icons.check, color: Colors.green));
      });
    } else {
      setState(() {
        result.add(Icon(Icons.close, color: Colors.red));
      });
    }
    if (indexList < listQuestionModel.length - 1) {
      indexList++;
    }
    else
    {
      setState(() {
        indexList=0;
        result.clear();
      });

    }
  }
}



