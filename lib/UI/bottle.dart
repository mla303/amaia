import 'dart:async';

import 'package:amaia/UI/sample.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

enum WidgetMarker {
  bottle,
  pumping,
}

class bottle extends StatefulWidget {
  @override
  _bottleState createState() => _bottleState();
}

class _bottleState extends State<bottle> {
  List<String> Bottle = [];

  List<String> Pumping = [];

  WidgetMarker selectedwidgetMarker = WidgetMarker.bottle;

  DateTime now = DateTime.now();
  String currenttime = DateFormat('MM-dd- - kk:mm').format(DateTime.now());

  String currnt = Jiffy().yMMMEdjm;

  final watch = Stopwatch().start();

//  String helo = watch;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff00C4B1),
        title: Text("Bottle"),

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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedwidgetMarker = WidgetMarker.bottle;
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
                                          WidgetMarker.bottle
                                      ? Colors.white
                                      : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                  child: new Image.asset(
                                "assets/images/bottle_icons.png",
                                color:
                                    selectedwidgetMarker == WidgetMarker.bottle
                                        ? Color(0xff00C4B1)
                                        : Colors.white,
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
                                "assets/images/breast-pump.png",
                                color:
                                    selectedwidgetMarker == WidgetMarker.pumping
                                        ? Color(0xff00C4B1)
                                        : Colors.white,
                              )),
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

  Widget getCustomContainor() {
    switch (selectedwidgetMarker) {
      case WidgetMarker.bottle:
        return bottle();
      case WidgetMarker.pumping:
        return pumping();
    }
    return bottle();
  }

  String meausre = "ml";

  TextEditingController bottletext = new TextEditingController();

  TextEditingController pumpingtext = new TextEditingController();

  Widget bottle() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: height / 20,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: width / 4,
//                height: height,
                child: TextFormField(
                  controller: bottletext,
                  inputFormatters: [LengthLimitingTextInputFormatter(3)],
                  style: TextStyle(
                      color: Color(0xff00C4B1), fontSize: height / 20),
                  cursorColor: Color(0xff00C4B1),

                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    hintText: "24 ",
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
                  fontSize: 30,
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
                "Enter Note (optional)",
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
              'Save',
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff00C4B1),
            onPressed: () {
              setState(() {
                Bottle.add(bottletext.text);
              });
            },
          ),
        ),
        SizedBox(
          height: height / 60,
        ),
        Divider(),
        Container(
//          color: Colors.lightGreen,
          height: height / 2.8,
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
                          child:
                              new Image.asset("assets/images/bottle_icons.png"),
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
                        Bottle[index],
                        style: TextStyle(
                            color: Color(0xff00C4B1),
                            fontWeight: FontWeight.w500,
                            fontSize: height / 42),
                      ),
                      Text(
                        meausre,
                        style: TextStyle(
                            color: Color(0xff00C4B1),
                            fontWeight: FontWeight.w500,
                            fontSize: height / 42),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color: Color(0xff00C4B1),
                  ),
                  onTap: () {
                    setState(() {
                      Bottle.removeWhere(
                          (currentItem) => Bottle[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: Bottle.length),
        )
      ],
    );
  }

  Widget pumping() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: height / 20,
        ),
//

        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: width / 4,
//                height: height,
                child: TextFormField(
                  controller: pumpingtext,
                  inputFormatters: [LengthLimitingTextInputFormatter(3)],
                  style: TextStyle(
                      color: Color(0xff00C4B1), fontSize: height / 20),
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
                  fontSize: 30,
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
                "Enter Note (optional)",
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
              'Save',
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff00C4B1),
            onPressed: () {
              setState(() {
                Pumping.add(pumpingtext.text);
              });
            },
          ),
        ),

        SizedBox(
          height: height / 60,
        ),

        Divider(),

        Container(
//          color: Colors.lightGreen,
          height: height / 2.9,
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
                          child: new Image.asset(
                            "assets/images/breast-pump.png",
                            color: Colors.white,
                            scale: 5,
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
                        Pumping[index],
                        style: TextStyle(
                            color: Color(0xff00C4B1),
                            fontWeight: FontWeight.w500,
                            fontSize: height / 42),
                      ),
                      Text(
                        meausre,
                        style: TextStyle(
                            color: Color(0xff00C4B1),
                            fontWeight: FontWeight.w500,
                            fontSize: height / 42),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color: Color(0xff00C4B1),
                  ),
                  onTap: () {
                    setState(() {
                      Pumping.removeWhere(
                          (currentItem) => pumping == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: Pumping.length),
        )
      ],
    );
  }
}
