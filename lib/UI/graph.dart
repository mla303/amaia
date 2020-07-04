import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:charts_flutter/flutter.dart' as charts;

enum WidgetMarker {
  feeding,
  bottle,
  diaper,
  sleep,
  meal,
  pumping,
  bathroom,
  medicane,
  temp,
  growth
}

class graph_chart extends StatefulWidget {
  @override
  _graph_chartState createState() => _graph_chartState();
}

class _graph_chartState extends State<graph_chart> {
  List<AppDownloads> data;

  @override
  void initState() {
    super.initState();

    data = [
      AppDownloads(
        Days: 'Mon',
        count: 178.1,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xff00C4B1),
        ),
      ),
      AppDownloads(
        Days: 'Tue',
        count: 205.4,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xff00C4B1),
        ),
      ),
      AppDownloads(
        Days: 'Wed',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xff00C4B1),
        ),
      ),
      AppDownloads(
        Days: 'Thur',
        count: 90.2,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xff00C4B1),
        ),
      ),
      AppDownloads(
        Days: 'Fri',
        count: 110.2,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xff00C4B1),
        ),
      ),
      AppDownloads(
        Days: 'Sat',
        count: 80.2,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xff00C4B1),
        ),
      ),
      AppDownloads(
        Days: 'Sun',
        count: 130.2,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xff00C4B1),
        ),
      ),
    ];
  }

  List<String> Peelist = [];

  List<String> poolist = [];

  List<String> bothlist = [];

  WidgetMarker selectedwidgetMarker = WidgetMarker.feeding;

  DateTime now = DateTime.now();
  String currenttime = DateFormat('MM-dd- - kk:mm').format(DateTime.now());

  String currnt = Jiffy().yMMMEdjm;

  final watch = Stopwatch().start();

//  String helo = watch;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Color(0xff00C4B1),
          title: Text("Diaper"),

//          leading: new IconButton(icon: new Icon(Icons.menu),
////          onPressed: () => ,
//          ),
        ),
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xff00C4B1),
                width: width,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: height / 46,
                    ),
                    Container(
//                      color: Colors.red,
                        height: height / 10,
                        width: width / 1.1,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(10),
                          children: <Widget>[
                            new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedwidgetMarker = WidgetMarker.feeding;
                                  });
                                },
                                child: new Container(
//                      height: height/6,
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle,
//                        color: Colors.green

                                      color: selectedwidgetMarker ==
                                              WidgetMarker.feeding
                                          ? Colors.white
                                          : Colors.transparent),
                                  padding: new EdgeInsets.fromLTRB(
                                      10.0, 10.0, 10.0, 10.0),

                                  child: Center(
                                      child: new Image.asset(
                                    "assets/images/Breastfeeding.png",
//                                      color: selectedwidgetMarker== WidgetMarker.feeding
//                                          ? Color(0xffff9f8f)
//                                          : Colors.white,
                                  )),
                                )),
//                            new GestureDetector(
//                                onTap: () {
//                                  setState(() {
//                                    selectedwidgetMarker = WidgetMarker.bottle;
//                                  });
//                                },
//                                child: new Container(
////                      height: height/6,
//                                  width: 60,
//                                  height: 60,
//                                  decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.white),
//                                      shape: BoxShape.circle,
//                                      color: selectedwidgetMarker ==
//                                              WidgetMarker.bottle
//                                          ? Colors.white
//                                          : Colors.transparent),
//                                  padding: new EdgeInsets.fromLTRB(
//                                      10.0, 10.0, 10.0, 10.0),
//
//                                  child: Center(
//                                      child: new Image.asset(
//                                    "assets/images/bottle.png",
////                                      color: selectedwidgetMarker== WidgetMarker.bottle
////                                          ? Color(0xffff9f8f)
////                                          : Colors.white,
//                                  )),
//                                )),
                            new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedwidgetMarker = WidgetMarker.diaper;
                                  });
                                },
                                child: new Container(
//                      height: height/6,
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle,
                                      color: selectedwidgetMarker ==
                                              WidgetMarker.diaper
                                          ? Colors.white
                                          : Colors.transparent),
                                  padding: new EdgeInsets.fromLTRB(
                                      10.0, 10.0, 10.0, 10.0),

                                  child: Center(
                                      child: new Image.asset(
                                    "assets/images/diaper.png",
//                                      color: selectedwidgetMarker== WidgetMarker.bottle
//                                          ? Color(0xffff9f8f)
//                                          : Colors.white,
                                  )),
                                )),
                            new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedwidgetMarker = WidgetMarker.sleep;
                                  });
                                },
                                child: new Container(
//                      height: height/6,
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle,
//                        color: Colors.green

                                      color: selectedwidgetMarker ==
                                              WidgetMarker.sleep
                                          ? Colors.white
                                          : Colors.transparent),
                                  padding: new EdgeInsets.fromLTRB(
                                      10.0, 10.0, 10.0, 10.0),

                                  child: Center(
                                      child: new Image.asset(
                                    "assets/images/sleeping.png",
//                                      color: selectedwidgetMarker== WidgetMarker.sleep
//                                          ? Color(0xffff9f8f)
//                                          : Colors.white,
                                  )),
                                )),

                            new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedwidgetMarker = WidgetMarker.pumping;
                                  });
                                },
                                child: new Container(
//                      height: height/6,
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle,
                                      color: selectedwidgetMarker ==
                                              WidgetMarker.pumping
                                          ? Colors.white
                                          : Colors.transparent),
                                  padding: new EdgeInsets.fromLTRB(
                                      10.0, 10.0, 10.0, 10.0),

                                  child: Center(
                                      child: new Image.asset(
                                    "assets/images/pumping.png",
//                                      color: selectedwidgetMarker== WidgetMarker.meal
//                                          ? Color(0xffff9f8f)
//                                          : Colors.white,
                                  )),
                                )),



                            new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedwidgetMarker = WidgetMarker.growth;
                                  });
                                },
                                child: new Container(
//                      height: height/6,
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle,
                                      color: selectedwidgetMarker ==
                                              WidgetMarker.growth
                                          ? Colors.white
                                          : Colors.transparent),
                                  padding: new EdgeInsets.fromLTRB(
                                      10.0, 10.0, 10.0, 10.0),

                                  child: Center(
                                      child: new Image.asset(
                                    "assets/images/growth.png",
//                                      color: selectedwidgetMarker== WidgetMarker.meal
//                                          ? Color(0xffff9f8f)
//                                          : Colors.white,
                                  )),
                                )),
                          ],
                        )),
                    SizedBox(
                      height: height / 60,
                    ),
                  ],
                ),
              ),

//          SizedBox(height: height/50,),

              Container(
                child: getCustomContainor(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getCustomContainor() {
    switch (selectedwidgetMarker) {
      case WidgetMarker.feeding:
        return Graph();
      case WidgetMarker.bottle:
        return Graph();
      case WidgetMarker.diaper:
        return Graph();
      case WidgetMarker.sleep:
        return Graph();
      case WidgetMarker.meal:
        return Graph();
      case WidgetMarker.pumping:
        return Graph();
      case WidgetMarker.bathroom:
        return Graph();
      case WidgetMarker.medicane:
        return Graph();
      case WidgetMarker.temp:
        return Graph();
      case WidgetMarker.growth:
        return Graph();
    }
    return Graph();
  }

  Widget Graph() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          child: Card(child: MyBarChart(data)),
        )
      ],
    );
  }
}

class MyBarChart extends StatelessWidget {
  final List<AppDownloads> data;

  MyBarChart(this.data);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<AppDownloads, String>> series = [
      charts.Series(
          id: 'AppDownloads',
          data: data,
          domainFn: (AppDownloads downloads, _) => downloads.Days,
          measureFn: (AppDownloads downloads, _) => downloads.count,
          colorFn: (AppDownloads downloads, _) => downloads.barColor)
    ];

    return charts.BarChart(
      series,
      animate: true,
      barGroupingType: charts.BarGroupingType.groupedStacked,
    );
  }
}

class AppDownloads {
  final String Days;

  final double count;

  final charts.Color barColor;

  AppDownloads({
    @required this.Days,
    @required this.count,
    @required this.barColor,
  });
}
