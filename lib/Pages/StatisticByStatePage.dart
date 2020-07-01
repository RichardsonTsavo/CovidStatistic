import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class StatisticByStatePageScreem extends StatelessWidget {

  String imageUrl;
  String state;
  int cases;
  int deaths;
  int suspects;
  int refuses;

  StatisticByStatePageScreem(this.imageUrl,this.state,this.cases,this.deaths,this.suspects,this.refuses);

  final GlobalKey<AnimatedCircularChartState> _chartKey =
  new GlobalKey<AnimatedCircularChartState>();
  final GlobalKey<AnimatedCircularChartState> _chartKey2 =
  new GlobalKey<AnimatedCircularChartState>();
  final GlobalKey<AnimatedCircularChartState> _chartKey3 =
  new GlobalKey<AnimatedCircularChartState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 198, 176),
        title: Text(state,style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Image.asset(imageUrl,width: 100),
                SizedBox(height: 15,),
                Text("Total de casos",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 15,),
                Text(cases.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 158, 198, 176),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              )
            ),
          ),
          SizedBox(
            height: 20,
          ),
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
                           100 - ((cases - refuses)/cases*100),
                            Colors.green[400],
                            rankKey: 'completed',
                          ),
                          new CircularSegmentEntry(
                            cases.roundToDouble(),
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
                    refuses.toString(),
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
                          "Descatados",
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
                            100 - ((cases - suspects)/cases*100),
                            Colors.orange[400],
                            rankKey: 'completed',
                          ),
                          new CircularSegmentEntry(
                            suspects.roundToDouble(),
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
                    suspects.toString(),
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
                          "Suspeitos",
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
                            100 - ((cases - deaths)/cases*100),
                            Colors.red[400],
                            rankKey: 'completed',
                          ),
                          new CircularSegmentEntry(
                            cases.roundToDouble(),
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
                    deaths.toString(),
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
      ),
    );
  }
}
