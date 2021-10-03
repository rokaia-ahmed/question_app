import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:question_app/quiz_page.dart';

main (){
  runApp(RunApp(),);
}

class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: QuizzApp(),
    );
  }
}
