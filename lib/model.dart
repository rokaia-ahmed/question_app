//questionText
//correct answer
import 'package:flutter/cupertino.dart';


//Quiz consists of group of questions
//question consists of question Text , correct answer

class QuestionModel
{
  String question="";//intialize
  bool answer=true; //intialize
  QuestionModel(this.question, this.answer);

}


//list of questions
//list answers
class QuizModel{
  List<String>questions=[];
  List<bool>answers=[];
  List <QuestionModel>listQuestion=[];

  // QuizModel(List<String> usQuestion,List<bool> usAnswer)
  // {
  //   this.questions=usQuestion;
  //   this.answers=usAnswer;
  // }

  QuizModel(this.listQuestion);

}





