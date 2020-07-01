import 'package:covidapp/Pages/TabsQuiz/HomeTabQuiz.dart';
import 'package:covidapp/Pages/TabsQuiz/Question%206.dart';
import 'package:covidapp/Pages/TabsQuiz/Question1.dart';
import 'package:covidapp/Pages/TabsQuiz/Question2.dart';
import 'package:covidapp/Pages/TabsQuiz/Question3.dart';
import 'package:covidapp/Pages/TabsQuiz/Question4.dart';
import 'package:covidapp/Pages/TabsQuiz/Question5.dart';
import 'package:covidapp/Pages/TabsQuiz/ResultPage.dart';
import 'package:flutter/material.dart';

 int symptoms = 0;

class QuizPageScreem extends StatefulWidget {

  @override
  _QuizPageScreemState createState() => _QuizPageScreemState();
}

class _QuizPageScreemState extends State<QuizPageScreem> {

  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste de Sintomas"),
        centerTitle: true,
          backgroundColor: Color.fromARGB(255, 158, 198, 176),
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeTabQuizPageScreem(pageController),
          Question1PageScreem(pageController),
          Question2PageScreem(pageController),
          Question3PageScreem(pageController),
          Question4PageScreem(pageController),
          Question5PageScreem(pageController),
          Question6PageScreem(pageController),
          ResultPageScreem()
        ],
      ),
    );
  }
}
