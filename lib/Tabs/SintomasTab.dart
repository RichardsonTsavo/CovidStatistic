import 'package:flutter/material.dart';

class SintomasTabPageScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/TopTabs/SintomasTopTab.png",
                width: MediaQuery.of(context).size.width,
              ),
              Text("Sintomas comuns:",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 198, 176),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Tosse seca",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 198, 176),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Image.asset("assets/Symptoms/tosse_seca.png",width: 100,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Febre",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 198, 176),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Image.asset("assets/Symptoms/febre.png",width: 100,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Cansaço",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 198, 176),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Image.asset("assets/Symptoms/cansaco.png",width: 100,)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("Sintomas menos comuns:",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 198, 176),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Perda de\npaladar ou olfato",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 198, 176),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Image.asset("assets/Symptoms/Perda_de_paladar_ou_olfato.png",width: 100,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("\nConjuntivite",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 198, 176),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Image.asset("assets/Symptoms/conjuntivite.png",width: 100,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("\nDor de cabeça",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 198, 176),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Image.asset("assets/Symptoms/dor_de_cabeca.png",width: 100,)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("Sintomas graves:",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 198, 176),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Dificuldade de\nrespirar",
                        style: TextStyle(
                            color: Color.fromARGB(255, 158, 198, 176),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Image.asset("assets/Symptoms/dificuldade_para_respirar.png",width: 100,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Dor ou pressão\nno peito",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 198, 176),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Image.asset("assets/Symptoms/febre.png",width: 100,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Perda de fala\nou movimento",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 198, 176),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Image.asset("assets/Symptoms/Perda_de_fala.png",width: 100,)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
