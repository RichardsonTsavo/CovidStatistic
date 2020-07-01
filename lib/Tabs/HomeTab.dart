import 'dart:convert';

import 'package:covidapp/Pages/QuizPage.dart';
import 'package:covidapp/models/Api.dart';
import 'package:covidapp/Pages/StatisticByStatePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:http/http.dart' as http;

class HomeTabPageScreem extends StatefulWidget {
  @override
  _HomeTabPageScreemState createState() => _HomeTabPageScreemState();
}

class _HomeTabPageScreemState extends State<HomeTabPageScreem> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
  final GlobalKey<AnimatedCircularChartState> _chartKey2 =
      new GlobalKey<AnimatedCircularChartState>();
  final GlobalKey<AnimatedCircularChartState> _chartKey3 =
      new GlobalKey<AnimatedCircularChartState>();

  String url = "https://api.covid19api.com/dayone/country/brazil";
  String urlByStates = "https://covid19-brazil-api.now.sh/api/report/v1";
  List<Api> api = List();

  Future<List<Api>> GetInfo() async {
    try {
      List<Api> returnList = List();
      final response = await http.get(url);
      if (response.statusCode == 200) {
        var decoreJson = jsonDecode(response.body);
        decoreJson.forEach((item) => returnList.add(Api.fromJson(item)));
        return returnList;
      } else {
        GetInfo();
      }
    } catch (error) {
      GetInfo();
    }
  }

    Future<Map> GetInfoByStates() async {
      var responseByStates;
      responseByStates = await http.post(urlByStates);
      return responseByStates = jsonDecode(responseByStates.body);
    }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  "assets/TopTabs/TopHome.png",
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  child: RaisedButton(
                    child: Text("Teste de Sintomas",
                        style: TextStyle(
                            color: Color.fromARGB(255, 71, 108, 163),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => QuizPageScreem()
                      ));
                    },
                    color: Color.fromARGB(255, 234, 244, 243),
                  ),
                  bottom: 35,
                  right: 40,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("Parâmetro nacional do Coronavírus",
                style: TextStyle(
                    color: Color.fromARGB(255, 158, 198, 176),
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text("Total de casos:",
                style: TextStyle(
                    color: Color.fromARGB(255, 158, 198, 176),
                    fontSize: 19,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            FutureBuilder(
              future: GetInfo().then((map) {
                api = map;
              }),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                    return CircularProgressIndicator();
                  default:
                    return snapshot.hasError? Text("Erro tente novamente"):Column(
                      children: <Widget>[
                        Text(api[api.length - 1].confirmed.toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 158, 198, 176),
                                fontSize: 35,
                                fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                AnimatedCircularChart(
                                  key: _chartKey,
                                  size: Size(135.0, 135.0),
                                  initialChartData: <CircularStackEntry>[
                                    new CircularStackEntry(
                                      <CircularSegmentEntry>[
                                        new CircularSegmentEntry(
                                          100 - ((api[api.length - 1].confirmed - api[api.length - 1].recovered)/api[api.length - 1].confirmed*100),
                                          Colors.green[400],
                                          rankKey: 'completed',
                                        ),
                                        new CircularSegmentEntry(
                                          api[api.length - 1].confirmed.roundToDouble(),
                                          Colors.blueGrey[600],
                                          rankKey: 'remaining',
                                        ),
                                      ],
                                      rankKey: 'progress',
                                    ),
                                  ],
                                  chartType: CircularChartType.Radial,
                                  percentageValues: true,
                                  holeLabel:
                                      api[api.length - 1].recovered.toString(),
                                  labelStyle: new TextStyle(
                                    color: Colors.blueGrey[600],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 158, 198, 176),
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 40,
                                  width: 110,
                                  child: Center(
                                      child: Text(
                                    "Recuperados",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                AnimatedCircularChart(
                                  key: _chartKey2,
                                  size: Size(135.0, 135.0),
                                  initialChartData: <CircularStackEntry>[
                                    new CircularStackEntry(
                                      <CircularSegmentEntry>[
                                        new CircularSegmentEntry(
                                          100 - ((api[api.length - 1].confirmed - api[api.length - 1].active)/api[api.length - 1].confirmed*100),
                                          Colors.orange[400],
                                          rankKey: 'completed',
                                        ),
                                        new CircularSegmentEntry(
                                          api[api.length - 1].confirmed.roundToDouble(),
                                          Colors.blueGrey[600],
                                          rankKey: 'remaining',
                                        ),
                                      ],
                                      rankKey: 'progress',
                                    ),
                                  ],
                                  chartType: CircularChartType.Radial,
                                  percentageValues: true,
                                  holeLabel:
                                      api[api.length - 1].active.toString(),
                                  labelStyle: new TextStyle(
                                    color: Colors.blueGrey[600],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 158, 198, 176),
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 40,
                                  width: 110,
                                  child: Center(
                                      child: Text(
                                    "Infectados",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                AnimatedCircularChart(
                                  key: _chartKey3,
                                  size: Size(135.0, 135.0),
                                  initialChartData: <CircularStackEntry>[
                                    new CircularStackEntry(
                                      <CircularSegmentEntry>[
                                        new CircularSegmentEntry(
                                          100 - ((api[api.length - 1].confirmed - api[api.length - 1].deaths)/api[api.length - 1].confirmed*100),
                                          Colors.red[400],
                                          rankKey: 'completed',
                                        ),
                                        new CircularSegmentEntry(
                                          api[api.length - 1].confirmed.roundToDouble(),
                                          Colors.blueGrey[600],
                                          rankKey: 'remaining',
                                        ),
                                      ],
                                      rankKey: 'progress',
                                    ),
                                  ],
                                  chartType: CircularChartType.Radial,
                                  percentageValues: true,
                                  holeLabel:
                                      api[api.length - 1].deaths.toString(),
                                  labelStyle: new TextStyle(
                                    color: Colors.blueGrey[600],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 158, 198, 176),
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 40,
                                  width: 110,
                                  child: Center(
                                      child: Text(
                                    "Mortos",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    );
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            Text("Casos Por estado",
                style: TextStyle(
                    color: Color.fromARGB(255, 158, 198, 176),
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            FutureBuilder(
              future: GetInfoByStates(),
              builder: (context,snapshot){
                switch(snapshot.connectionState){
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                    return CircularProgressIndicator();
                  default:
                    return snapshot.hasError? Text("Erro tente novamente") : Container(
                      height: 100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data["data"].length,
                          itemBuilder: (context, index){
                              return Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 8),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => StatisticByStatePageScreem(
                                        "assets/Flags/${snapshot.data["data"][index]["uf"]}.png",
                                        snapshot.data["data"][index]["state"],
                                        snapshot.data["data"][index]["cases"],
                                        snapshot.data["data"][index]["deaths"],
                                        snapshot.data["data"][index]["suspects"],
                                        snapshot.data["data"][index]["refuses"],
                                      )
                                    ));
                                  },
                                  child: Container(
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 10,),
                                        Image.asset("assets/Flags/${snapshot.data["data"][index]["uf"]}.png",width: 50,),
                                        SizedBox(height: 5,),
                                        Text(snapshot.data["data"][index]["state"],style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 158, 198, 176),
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                  ),
                                ),
                              );
                          }
                      ),
                    );
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
