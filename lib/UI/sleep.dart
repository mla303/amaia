import 'dart:async';
import 'package:jiffy/jiffy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sleep extends StatefulWidget {
  @override
  _sleepState createState() => _sleepState();
}

class _sleepState extends State<sleep> {
  String sleeptime;
  String wakeuptime;

  List<String> Sleep = [];
  String stoptimetodisplay = "00:00:00";
  bool startpress = true;
  bool stoppress = true;
  bool resettpress = true;
  String currnt = Jiffy().yMMMEdjm;


  @override
  Widget build(BuildContext context) {
    TextEditingController econtr = TextEditingController();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff00C4B1),
        title: Text("Sleep"),

//          leading: new IconButton(icon: new Icon(Icons.menu),
////          onPressed: () => ,
//          ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
//      mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: height / 20,
              ),

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

                        Sleep.add(stoptimetodisplay);
//                        leftlist.add(stoptimetodisplay);
//                        leftmeaure.add(leftPumpingText.text);

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



//              Container(
//                width: width / 1.1,
//                //color: Colors.pinkAccent,
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    Text(
//                      "Time of Asleep",
//                      style: TextStyle(
//                          color: Color(0xff00C4B1),
//                          fontWeight: FontWeight.bold,
//                          fontSize: height / 50),
////          textAlign: TextAlign.start,
//                    ),
//                    SizedBox(
//                      height: height / 60,
//                    ),
//                    Container(
//                      height: height / 20,
//                      child: CupertinoTheme(
//                        data: CupertinoThemeData(
//                            textTheme: CupertinoTextThemeData(
//                                dateTimePickerTextStyle:
//                                    TextStyle(color: Colors.white))),
//                        child: CupertinoDatePicker(
//                          backgroundColor: Color(0xff00C4B1),
//                          mode: CupertinoDatePickerMode.time,
//                          use24hFormat: false,
//                          onDateTimeChanged: (asleep) {
//                            sleeptime = asleep.toString();
//                          },
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              SizedBox(
//                height: height / 20,
//              ),
//              Container(
//                width: width / 1.1,
//                //color: Colors.pinkAccent,
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    Text(
//                      "Wakeup time",
//                      style: TextStyle(
//                          color: Color(0xff00C4B1),
//                          fontWeight: FontWeight.bold,
//                          fontSize: height / 50),
////          textAlign: TextAlign.start,
//                    ),
//                    SizedBox(
//                      height: height / 60,
//                    ),
//                    Container(
//                      height: height / 20,
//                      child: CupertinoTheme(
//                        data: CupertinoThemeData(
//                            textTheme: CupertinoTextThemeData(
//                                dateTimePickerTextStyle:
//                                    TextStyle(color: Colors.white))),
//                        child: CupertinoDatePicker(
//                          backgroundColor: Color(0xff00C4B1),
//                          mode: CupertinoDatePickerMode.time,
//                          use24hFormat: false,
//                          onDateTimeChanged: (wakup) {
//                            wakeuptime = wakup.toString();
//                          },
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),






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
                      child: TextField(
                        controller: econtr,
                        style: TextStyle(
                          color: Color(0xff00C4B1),
                        ),
                        cursorColor: Color(0xff00C4B1),
                        keyboardType: TextInputType.text,
                        decoration: new InputDecoration.collapsed(
                          hintText: "Please write here... ",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                          ),
                        ),
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
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xff00C4B1),
                  onPressed: () {
                    setState(() {
                      Sleep.add(sleeptime);
                    });
                  },
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              Divider(),
              Container(
//        color: Colors.lightGreen,
                height: height / 2,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Row(
                          children: <Widget>[
                            Container(
//                      height: height/6,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                shape: BoxShape.circle,
                                color: Color(0xff00C4B1),
                              ),
//                        padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                child: new Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                  size: 18,
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

                            Text(Sleep[index]),
                          ],
                        ),
                        trailing: Icon(
                          Icons.delete,
                          color: Color(0xff00C4B1),
                        ),
                        onTap: () {
                          setState(() {
                            Sleep.removeWhere(
                                (currentItem) => Sleep[index] == currentItem);
                          });
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: Sleep.length),
              )
            ],
          ),
        ),
      ),
    );
  }


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


}


