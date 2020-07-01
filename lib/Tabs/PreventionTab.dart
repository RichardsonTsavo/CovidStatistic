import 'package:flutter/material.dart';

class PreventionTabPageScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/TopTabs/PrevencaoTopTab.png",
                width: MediaQuery.of(context).size.width,
              ),
              Image.asset(
                "assets/Prevention/contactless.png",
                width: MediaQuery.of(context).size.width-30,
              ),
              Image.asset(
                "assets/Prevention/cover_the_face.png",
                width: MediaQuery.of(context).size.width-30,
              ),
              Image.asset(
                "assets/Prevention/sanitize_hands.png",
                width: MediaQuery.of(context).size.width-30,
              ),
              Image.asset(
                "assets/Prevention/use_mask.png",
                width: MediaQuery.of(context).size.width-30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
