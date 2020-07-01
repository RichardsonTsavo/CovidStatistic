import 'package:covidapp/Pages/QuizPage.dart';
import 'package:flutter/material.dart';

class ResultPageScreem extends StatelessWidget {

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
                child: symptoms>=3?Text(
                  "Você aparenta ter os sintomas do novo covid-19, Por favor ligue de imediato para a unidade de saude mais próximo e siga as orientações.",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ):Text(
                  "Pelo que parece você está com uma gripe ou uma virose, então não precisa se preocupar tanto, mas caso os sintomas percistam procure a unidade de saúde mais próxima.",
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
        RaisedButton(
          color: Color.fromARGB(255, 158, 198, 176),
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        )
      ],
    );
  }
}
