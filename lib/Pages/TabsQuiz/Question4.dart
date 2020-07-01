import 'package:covidapp/Pages/QuizPage.dart';
import 'package:flutter/material.dart';

class Question4PageScreem extends StatelessWidget {
  PageController pageController;

  Question4PageScreem(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 158, 198, 176),
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.only(top: 25, left: 20, bottom: 25),
                width: 250,
                child: Text(
                  "Está com dificuldade para respirar?",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            SizedBox(
              width: 5,
            ),
            Image.asset("assets/Aline.png", width: 150)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              color: Color.fromARGB(255, 158, 198, 176),
              onPressed: (){
                symptoms++;
                pageController.animateToPage(5, duration: Duration(seconds: 1), curve: Curves.ease);
              },
              child: Text("Sim!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            RaisedButton(
              color: Color.fromARGB(255, 158, 198, 176),
              onPressed: (){
                pageController.animateToPage(5, duration: Duration(seconds: 1), curve: Curves.ease);
              },
              child: Text("Não!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            )
          ],
        )
      ],
    );
  }
}
