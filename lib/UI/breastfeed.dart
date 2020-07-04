import 'dart:async';
import 'package:jiffy/jiffy.dart';
import 'package:flutter/material.dart';

enum WidgetMarker {
  L,
  L_R,
  R,
}

class breastfeed extends StatefulWidget {
  @override
  _breastfeedState createState() => _breastfeedState();
}

class _breastfeedState extends State<breastfeed> {
  List<String> leftlist = [];

  List<String> rightlist = [];

  List<String> bothsidetlist = [];

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
        title: Text("Breast Feeding"),

//          leading: new IconButton(icon: new Icon(Icons.menu),
////          onPressed: () => ,
//          ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Column(
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
                            padding:
                                new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

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
                                color: selectedwidgetMarker == WidgetMarker.L_R
                                    ? Colors.white
                                    : Colors.transparent),
                            padding:
                                new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

                            child: Center(
                              child: new Text(
                                "L & R",
                                style: TextStyle(
                                    fontSize: height / 50,
                                    color:
                                        selectedwidgetMarker == WidgetMarker.L_R
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
                            padding:
                                new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

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
    );
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

                  leftlist.add(stoptimetodisplay);

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
                  title: Row(
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
                      Text(leftlist[index]),
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

//  void addItem(){
//
//    setState(() {
//      timer.add(stoptimetodisplay[0]);
//    });
//
//  }

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
                  title: Row(
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
                      Text(bothsidetlist[index]),
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
                  title: Row(
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
                      Text(
                        rightlist[index],
                        style: TextStyle(color: Color(0xff00C4B1),),
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
