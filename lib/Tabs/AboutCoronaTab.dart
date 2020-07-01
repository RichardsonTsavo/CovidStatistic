import 'package:flutter/material.dart';

class AbountCoronaTabPageScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 158, 198, 176),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight:Radius.circular(20.0)),
              ),
              child: Center(
                child: Text("Sobre o Covid-19",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
              )
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Text("A doença do coronavírus (COVID-19) é uma doença infecciosa causada por um coronavírus recém-descoberto. A maioria das pessoas que adoece em decorrência da COVID-19 apresentará sintomas leves a moderados e se recuperará sem tratamento especial.",style: TextStyle(color: Color.fromARGB(255, 158, 198, 176),fontSize: 23,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  SizedBox(
                    height: 15,
                  ),
                  Text("COMO ELA SE ESPALHA\nO vírus que causa a COVID-19 é transmitido principalmente por meio de gotículas geradas quando uma pessoa infectada tosse, espirra ou exala. Essas gotículas são muito pesadas para permanecerem no ar e são rapidamente depositadas em pisos ou superfícies.",style: TextStyle(color: Color.fromARGB(255, 158, 198, 176),fontSize: 23,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Você pode ser infectado ao inalar o vírus se estiver próximo de alguém que tenha COVID-19 ou ao tocar em uma superfície contaminada e, em seguida, passar as mãos nos olhos, no nariz ou na boca.",style: TextStyle(color: Color.fromARGB(255, 158, 198, 176),fontSize: 23,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
