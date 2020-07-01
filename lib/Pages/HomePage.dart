import 'package:covidapp/Tabs/AboutCoronaTab.dart';
import 'package:covidapp/Tabs/HomeTab.dart';
import 'package:covidapp/Tabs/PreventionTab.dart';
import 'package:covidapp/Tabs/SintomasTab.dart';
import 'package:covidapp/Tabs/TreatmentTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageScreem extends StatefulWidget {
  @override
  _HomePageScreemState createState() => _HomePageScreemState();
}

class _HomePageScreemState extends State<HomePageScreem> {

  int currentIndex = 0;


  final tabs = [
      HomeTabPageScreem(),
      SintomasTabPageScreem(),
      PreventionTabPageScreem(),
      TreatmentTabPageScreem(),
      AbountCoronaTabPageScreem()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 158, 198, 176),
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white,),
            title: Text("Home",style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Icons/sintomas.png",width: 40,),
              title: Text("Sintomas",style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Icons/prevencao.png",width: 40,),
              title: Text("Prevenção",style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Icons/tratamento.png",width: 40,),
              title: Text("Tratamento",style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Icons/sobre.png",width: 40,),
              title: Text("Sobre",style: TextStyle(color: Colors.white),)
          ),
        ],
      ),
    );
  }


}
