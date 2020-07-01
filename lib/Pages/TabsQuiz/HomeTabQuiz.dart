import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeTabQuizPageScreem extends StatelessWidget {

  PageController pageController;
  HomeTabQuizPageScreem(this.pageController);


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
                borderRadius: BorderRadius.circular(15)
              ),
              padding: EdgeInsets.only(top: 25,left: 20,bottom: 25),
                width:250,child: Text("Olá, Sou a enfermeira Aline e estou aqui para fazer o seu teste de Sintomas. Está pronto?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)
              ,)),
            SizedBox(
              width: 5,
            ),
            Image.asset("assets/Aline.png",width: 150)
          ],
        ),
        RaisedButton(
          color: Color.fromARGB(255, 158, 198, 176),
          onPressed: (){
            pageController.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.ease);
          },
          child: Text("Estou pronto!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        )
      ],
    );
  }
}
