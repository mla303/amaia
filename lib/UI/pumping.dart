import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:jiffy/jiffy.dart';
import 'package:flutter/material.dart';

enum WidgetMarker {
  L,
  L_R,
  R,
}

class pumping extends StatefulWidget {
  @override
  _pumpingState createState() => _pumpingState();
}

class _pumpingState extends State<pumping> {

  List<String> leftlist = [];
  List<String> leftmeaure = [];


  List<String> rightlist = [];
  List<String> rightmeaure = [];


  List<String> bothsidetlist = [];
  List<String> bothmeaure = [];


  bool running = false;

  String currnt = Jiffy().yMMMEdjm;

  WidgetMarker selectedwidgetMarker = WidgetMarker.L;

  String totaltime;
  String Currenttime;

  String days = "13";
  String month = "08";
  String year = "01";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff00C4B1),
        title: Text("Pumping"),

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
                    width: width / 1.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedwidgetMarker = WidgetMarker.L;
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

                                  color: selectedwidgetMarker == WidgetMarker.L
                                      ? Colors.white
                                      : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                child: new Text(
                                  "L",
                                  style: TextStyle(
                                      fontSize: height / 50,
                                      color:
                                          selectedwidgetMarker == WidgetMarker.L
                                              ? Color(0xff00C4B1)
                                              : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedwidgetMarker = WidgetMarker.L_R;
                              });
                            },
                            child: new Container(
//                      height: height/6,
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  shape: BoxShape.circle,
                                  color:
                                      selectedwidgetMarker == WidgetMarker.L_R
                                          ? Colors.white
                                          : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                child: new Text(
                                  "L & R",
                                  style: TextStyle(
                                      fontSize: height / 50,
                                      color: selectedwidgetMarker ==
                                              WidgetMarker.L_R
                                          ? Color(0xff00C4B1)
                                          : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedwidgetMarker = WidgetMarker.R;
                              });
                            },
                            child: new Container(
//                      height: height/6,
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  shape: BoxShape.circle,
                                  color: selectedwidgetMarker == WidgetMarker.R
                                      ? Colors.white
                                      : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                child: new Text(
                                  "R",
                                  style: TextStyle(
                                      fontSize: height / 50,
                                      color:
                                          selectedwidgetMarker == WidgetMarker.R
                                              ? Color(0xff00C4B1)
                                              : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
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
    );
  }

  TextEditingController leftPumpingText = new TextEditingController();
  TextEditingController bothPumpingText = new TextEditingController();
  TextEditingController rightPumpingText = new TextEditingController();

  String measure = "ml";
  bool startpress = true;
  bool stoppress = true;
  bool resettpress = true;
  String stoptimetodisplay = "00:00:00";
  String total = "00:00:00";

  var swatch = Stopwatch();
  final dur = const Duration(seconds: 1);

  void starttimer() {
    Timer(dur, keeprunning);
  }

  void keeprunning() {
    if (swatch.isRunning) {
      starttimer();
    }

    setState(() {
      stoptimetodisplay = swatch.elapsed.inHours.toString().padLeft(2, "0") +
          ":" +
          (swatch.elapsed.inMinutes % 60).toString().padLeft(2, "0") +
          ":" +
          (swatch.elapsed.inSeconds % 60).toString().padLeft(2, "0");
    });
  }

  void startStopWatch() {
    setState(() {
      stoppress = false;
      startpress = false;
    });

    swatch.start();
    starttimer();
  }

  void stopStopWatch() {
    setState(() {
      stoppress = true;
      resettpress = false;
    });
    swatch.stop();
    print(stoptimetodisplay);
  }

  void resetStopWatch() {
    setState(() {
      startpress = true;
      resettpress = true;
    });

    swatch.reset();
  }



  Widget getCustomContainor() {
    switch (selectedwidgetMarker) {
      case WidgetMarker.L:
        return getLeft();
      case WidgetMarker.L_R:
        return getLeftRight();
      case WidgetMarker.R:
        return getRight();
    }
    return getLeft();
  }



  String meausre = "ml";


  Widget getLeft() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: height / 20,
        ),
//        TikTikTimer(
//
//          initialDate: DateTime.now(),
//          running: running,
//          height: 150,
//
//          backgroundColor: Colors.transparent,
//          timerTextStyle: TextStyle(color: Color(0xffff9f8f), fontSize: 40),
//          borderRadius: 100,
//          isRaised: false,
//          tracetime: (time) {
//             print(time.getCurrentSecond);
//             totaltime = time.getCurrentSecond;
//          },
//        ),

        Container(
          child: Text(
            "$stoptimetodisplay",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Color(0xff00C4B1),
            ),
          ),
        ),



        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: width / 6,
//                height: height,
                child: TextFormField(
                  controller: leftPumpingText,
                  inputFormatters: [LengthLimitingTextInputFormatter(3)],
                  style: TextStyle(
                      color: Color(0xff00C4B1), fontSize: height / 30),
                  cursorColor: Color(0xff00C4B1),

                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    hintText: "12",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                  ),

                  textAlign: TextAlign.center,
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: width / 40,
              ),
              Text(
                "$meausre",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff00C4B1),
                ),
              ),
            ],
          ),
        ),


        SizedBox(
          height: height / 30,
        ),

        Container(
          width: width / 1.1,
          //color: Colors.pinkAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Enter Note",
                style: TextStyle(
                    color: Color(0xff00C4B1),
                    fontWeight: FontWeight.bold,
                    fontSize: height / 50),
//          textAlign: TextAlign.start,
              ),
              Container(
                width: width / 1.3,
//                height: height,
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xff00C4B1),
                  ),
                  cursorColor: Color(0xff00C4B1),
                  keyboardType: TextInputType.text,

                  decoration: new InputDecoration(
//                    filled: true,
//                    fillColor: Colors.black12,
//                      enabledBorder: OutlineInputBorder(
//                        borderSide: BorderSide(
//                          color: Color(0xffff9f8f),),
//                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    hintText: "Please write your note here... ",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                  ),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: height / 20,
        ),
        ButtonTheme(
          minWidth: width / 1.2,
          height: height / 16,
          child: RaisedButton(
            child: Text(
              'Start',
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff00C4B1),
            onPressed: () {
              startpress ? startStopWatch() : null;

//
//              try {
//                if (running == false)
//                  setState(() {
//                    running = true;
//                  });
//              } on Exception {}
            },
          ),
        ),

        SizedBox(
          height: height / 60,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ButtonTheme(
              minWidth: width / 3,
              height: height / 16,
              child: RaisedButton(
                child: Text(
                  'Stop',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  stoppress ? null : stopStopWatch();
                  leftlist.add(stoptimetodisplay);
                  leftmeaure.add(leftPumpingText.text);

//                  timer.add(Currenttime);
//
//
//                  if (running == false)
//                    setState(() {
//                      running = false;
//                    });
                },
              ),
            ),
            ButtonTheme(
              minWidth: width / 3,
              height: height / 16,
              child: RaisedButton(
                child: Text(
                  'Reset',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  resettpress ? null : resetStopWatch();

//                 Currenttime = totaltime;

//                  if (running == true)
//                    setState(() {
//                      running = false;
//                    });
                },
              ),
            ),
          ],
        ),

        Divider(),

        Container(
//          color: Colors.lightGreen,
          height: 180,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
//                      height: height/6,
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                              color: Color(0xff00C4B1),

//                            color: selectedwidgetMarker== WidgetMarker.L
//                                ? Colors.white
//                                : Colors.transparent
                            ),
//                        padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

                            child: Center(
                              child: new Text(
                                "L",
                                style: TextStyle(
                                    fontSize: height / 50,
                                    color:
//                                selectedwidgetMarker== WidgetMarker.L
//                                    ?
                                    Colors.white,
//                                    : Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width / 60,
                          ),
                          Text(
                            currnt,
                            style: TextStyle(fontSize: height / 60),
                          ),
                          SizedBox(
                            width: width / 60,
                          ),

                        ],
                      ),
                      Text(leftlist[index],),
                      Row(
                        children: <Widget>[
                          Text(leftmeaure[index],
                            style: TextStyle(
                                color: Color(0xff00C4B1),
                                fontWeight: FontWeight.w500,
                                fontSize: height / 42),),
                          Text(
                            meausre,
                            style: TextStyle(
                                color: Color(0xff00C4B1),
                                fontWeight: FontWeight.w500,
                                fontSize: height / 42),
                          ),
                        ],
                      ),

                    ],
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color: Color(0xff00C4B1),
                  ),
                  onTap: () {
                    setState(() {
                      leftlist.removeWhere(
                              (currentItem) => leftlist[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: leftlist.length),
        )
      ],
    );
  }

  Widget getLeftRight() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: height / 20,
        ),
//        TikTikTimer(
//
//          initialDate: DateTime.now(),
//          running: running,
//          height: 150,
//
//          backgroundColor: Colors.transparent,
//          timerTextStyle: TextStyle(color: Color(0xffff9f8f), fontSize: 40),
//          borderRadius: 100,
//          isRaised: false,
//          tracetime: (time) {
//             print(time.getCurrentSecond);
//             totaltime = time.getCurrentSecond;
//          },
//        ),

        Container(
          child: Text(
            "$stoptimetodisplay",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Color(0xff00C4B1),
            ),
          ),
        ),

        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: width / 6,
//                height: height,
                child: TextFormField(
                  controller: bothPumpingText,
                  inputFormatters: [LengthLimitingTextInputFormatter(3)],
                  style: TextStyle(
                      color: Color(0xff00C4B1), fontSize: height / 30),
                  cursorColor: Color(0xff00C4B1),

                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    hintText: "12",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                  ),

                  textAlign: TextAlign.center,
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: width / 40,
              ),
              Text(
                "$meausre",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff00C4B1),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: height / 20,
        ),

        Container(
          width: width / 1.1,
          //color: Colors.pinkAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Enter Note",
                style: TextStyle(
                    color: Color(0xff00C4B1),
                    fontWeight: FontWeight.bold,
                    fontSize: height / 50),
//          textAlign: TextAlign.start,
              ),
              Container(
                width: width / 1.3,
//                height: height,
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xff00C4B1),
                  ),
                  cursorColor: Color(0xff00C4B1),
                  keyboardType: TextInputType.text,

                  decoration: new InputDecoration(
//                    filled: true,
//                    fillColor: Colors.black12,
//                      enabledBorder: OutlineInputBorder(
//                        borderSide: BorderSide(
//                          color: Color(0xffff9f8f),),
//                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    hintText: "Please write your note here... ",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                  ),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: height / 20,
        ),
        ButtonTheme(
          minWidth: width / 1.2,
          height: height / 16,
          child: RaisedButton(
            child: Text(
              'Start',
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff00C4B1),
            onPressed: () {
              startpress ? startStopWatch() : null;

//
//              try {
//                if (running == false)
//                  setState(() {
//                    running = true;
//                  });
//              } on Exception {}
            },
          ),
        ),

        SizedBox(
          height: height / 60,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ButtonTheme(
              minWidth: width / 3,
              height: height / 16,
              child: RaisedButton(
                child: Text(
                  'Stop',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  stoppress ? null : stopStopWatch();

//                  String total = dur.inSeconds.toString();

//                  String data = stoptimetodisplay.split(':');

                  bothsidetlist.add(stoptimetodisplay);
                  bothmeaure.add(bothPumpingText.text);

//                  timer.add(Currenttime);
//
//
//                  if (running == false)
//                    setState(() {
//                      running = false;
//                    });
                },
              ),
            ),
            ButtonTheme(
              minWidth: width / 3,
              height: height / 16,
              child: RaisedButton(
                child: Text(
                  'Reset',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  resettpress ? null : resetStopWatch();

//                 Currenttime = totaltime;

//                  if (running == true)
//                    setState(() {
//                      running = false;
//                    });
                },
              ),
            ),
          ],
        ),

        Divider(),

        Container(
//          color: Colors.lightGreen,
          height: 180,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
//                      height: height/6,
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                              color: Color(0xff00C4B1),

//                            color: selectedwidgetMarker== WidgetMarker.L
//                                ? Colors.white
//                                : Colors.transparent
                            ),
//                        padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

                            child: Center(
                              child: new Text(
                                "L&R",
                                style: TextStyle(
                                    fontSize: height / 70,
                                    color:
//                                selectedwidgetMarker== WidgetMarker.L
//                                    ?
                                    Colors.white,
//                                    : Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width / 60,
                          ),
                          Text(
                            currnt,
                            style: TextStyle(fontSize: height / 60),
                          ),
                          SizedBox(
                            width: width / 60,
                          ),

                        ],
                      ),
                      Text(bothsidetlist[index]),
                      Row(
                        children: <Widget>[
                          Text(bothmeaure[index],
                            style: TextStyle(
                                color: Color(0xff00C4B1),
                                fontWeight: FontWeight.w500,
                                fontSize: height / 42),),
                          Text(
                            meausre,
                            style: TextStyle(
                                color: Color(0xff00C4B1),
                                fontWeight: FontWeight.w500,
                                fontSize: height / 42),
                          ),
                        ],
                      ),

                    ],
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color: Color(0xff00C4B1),
                  ),
                  onTap: () {
                    setState(() {
                      bothsidetlist.removeWhere(
                              (currentItem) => bothsidetlist[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: bothsidetlist.length),
        )
      ],
    );
  }

  Widget getRight() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: height / 20,
        ),
//        TikTikTimer(
//
//          initialDate: DateTime.now(),
//          running: running,
//          height: 150,
//
//          backgroundColor: Colors.transparent,
//          timerTextStyle: TextStyle(color: Color(0xffff9f8f), fontSize: 40),
//          borderRadius: 100,
//          isRaised: false,
//          tracetime: (time) {
//             print(time.getCurrentSecond);
//             totaltime = time.getCurrentSecond;
//          },
//        ),

        Container(
          child: Text(
            "$stoptimetodisplay",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Color(0xff00C4B1),
            ),
          ),
        ),

        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: width / 6,
//                height: height,
                child: TextFormField(
                  controller: rightPumpingText,
                  inputFormatters: [LengthLimitingTextInputFormatter(3)],
                  style: TextStyle(
                      color: Color(0xff00C4B1), fontSize: height / 30),
                  cursorColor: Color(0xff00C4B1),

                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    hintText: "12",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                  ),

                  textAlign: TextAlign.center,
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: width / 40,
              ),
              Text(
                "$meausre",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff00C4B1),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: height / 20,
        ),

        Container(
          width: width / 1.1,
          //color: Colors.pinkAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Enter Note",
                style: TextStyle(
                    color: Color(0xff00C4B1),
                    fontWeight: FontWeight.bold,
                    fontSize: height / 50),
//          textAlign: TextAlign.start,
              ),
              Container(
                width: width / 1.3,
//                height: height,
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xff00C4B1),
                  ),
                  cursorColor: Color(0xff00C4B1),
                  keyboardType: TextInputType.text,

                  decoration: new InputDecoration(
//                    filled: true,
//                    fillColor: Colors.black12,
//                      enabledBorder: OutlineInputBorder(
//                        borderSide: BorderSide(
//                          color: Color(0xffff9f8f),),
//                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    hintText: "Please write your note here... ",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                  ),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: height / 20,
        ),
        ButtonTheme(
          minWidth: width / 1.2,
          height: height / 16,
          child: RaisedButton(
            child: Text(
              'Start',
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff00C4B1),
            onPressed: () {
              startpress ? startStopWatch() : null;

//
//              try {
//                if (running == false)
//                  setState(() {
//                    running = true;
//                  });
//              } on Exception {}
            },
          ),
        ),

        SizedBox(
          height: height / 60,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ButtonTheme(
              minWidth: width / 3,
              height: height / 16,
              child: RaisedButton(
                child: Text(
                  'Stop',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  stoppress ? null : stopStopWatch();

                  rightlist.add(stoptimetodisplay);
                  rightmeaure.add(rightPumpingText.text);

//                  timer.add(Currenttime);
//
//
//                  if (running == false)
//                    setState(() {
//                      running = false;
//                    });
                },
              ),
            ),
            ButtonTheme(
              minWidth: width / 3,
              height: height / 16,
              child: RaisedButton(
                child: Text(
                  'Reset',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  resettpress ? null : resetStopWatch();

//                 Currenttime = totaltime;

//                  if (running == true)
//                    setState(() {
//                      running = false;
//                    });
                },
              ),
            ),
          ],
        ),

        Divider(),

        Container(
//          color: Colors.lightGreen,
          height: 180,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
//                      height: height/6,
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                              color: Color(0xff00C4B1),

//                            color: selectedwidgetMarker== WidgetMarker.L
//                                ? Colors.white
//                                : Colors.transparent
                            ),
//                        padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

                            child: Center(
                              child: new Text(
                                "R",
                                style: TextStyle(
                                    fontSize: height / 50,
                                    color:
//                                selectedwidgetMarker== WidgetMarker.L
//                                    ?
                                    Colors.white,
//                                    : Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width / 60,
                          ),
                          Text(
                            currnt,
                            style: TextStyle(fontSize: height / 60),
                          ),
                          SizedBox(
                            width: width / 60,
                          ),

                        ],
                      ),
                      Text(
                        rightlist[index],
                        style: TextStyle(color: Color(0xff00C4B1),),
                      ),
                      Row(
                        children: <Widget>[
                          Text(rightmeaure[index],
                            style: TextStyle(
                                color: Color(0xff00C4B1),
                                fontWeight: FontWeight.w500,
                                fontSize: height / 42),),
                          Text(
                            meausre,
                            style: TextStyle(
                                color: Color(0xff00C4B1),
                                fontWeight: FontWeight.w500,
                                fontSize: height / 42),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color: Color(0xff00C4B1),
                  ),
                  onTap: () {
                    setState(() {
                      rightlist.removeWhere(
                              (currentItem) => rightlist[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: rightlist.length),
        )
      ],
    );
  }
}
