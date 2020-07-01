import 'package:covidapp/Pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Covid App",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      accentColor: Color.fromARGB(255, 158, 198, 176)
    ),
    home: HomePageScreem(),
  ));
}