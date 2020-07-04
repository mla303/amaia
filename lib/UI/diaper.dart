import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

enum WidgetMarker {
  pee,
  poo,
  both,
}

class diaper extends StatefulWidget {
  @override
  _diaperState createState() => _diaperState();
}

class _diaperState extends State<diaper> {
  List<String> Peelist = [];

  List<String> poolist = [];

  List<String> bothlist = [];

  WidgetMarker selectedwidgetMarker = WidgetMarker.pee;

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
                    width: width / 1.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedwidgetMarker = WidgetMarker.pee;
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

                                  color:
                                      selectedwidgetMarker == WidgetMarker.pee
                                          ? Colors.white
                                          : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                  child: new Image.asset(
                                "assets/images/pee.png",
                                color: selectedwidgetMarker == WidgetMarker.pee
                                    ? Color(0xff00C4B1)
                                    : Colors.white,
                              )),
                            )),
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedwidgetMarker = WidgetMarker.poo;
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
                                      selectedwidgetMarker == WidgetMarker.poo
                                          ? Colors.white
                                          : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                  child: new Image.asset(
                                "assets/images/poo.png",
                                color: selectedwidgetMarker == WidgetMarker.poo
                                    ? Color(0xff00C4B1)
                                    : Colors.white,
                              )),
                            )),
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedwidgetMarker = WidgetMarker.both;
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
                                      selectedwidgetMarker == WidgetMarker.both
                                          ? Colors.white
                                          : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                child: new Text(
                                  "Both",
                                  style: TextStyle(
                                      fontSize: height / 50,
                                      color: selectedwidgetMarker ==
                                              WidgetMarker.both
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

  Widget getCustomContainor() {
    switch (selectedwidgetMarker) {
      case WidgetMarker.pee:
        return pee();
      case WidgetMarker.poo:
        return poo();
      case WidgetMarker.both:
        return both();
    }
    return pee();
  }

  String peetext = "Pee";
  String pootext = "Poo";
  String bothtext = "Pee & Poo";

  Widget pee() {
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
          child: Text(
            "$peetext",
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
                Peelist.add(peetext);
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
                          child: new Image.asset("assets/images/pee.png"),
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
                        Peelist[index],
                        style: TextStyle(
                            color: Color(0xff00C4B1),
                            fontWeight: FontWeight.w500,
                            fontSize: height / 42),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color:Color(0xff00C4B1),
                  ),
                  onTap: () {
                    setState(() {
                      Peelist.removeWhere(
                          (currentItem) => Peelist[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: Peelist.length),
        )
      ],
    );
  }

  Widget poo() {
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
          child: Text(
            "$pootext",
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
                poolist.add(pootext);
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
                          child: new Image.asset("assets/images/poo.png"),
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
                        poolist[index],
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
                      poolist.removeWhere(
                          (currentItem) => poolist[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: poolist.length),
        )
      ],
    );
  }

  Widget both() {
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
          child: Text(
            "$bothtext",
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
                bothlist.add(bothtext);
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
                          child: Text(
                            "Both",
                            style: TextStyle(
                                fontSize: height / 80,
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
                        bothlist[index],
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
                      bothlist.removeWhere(
                          (currentItem) => bothlist[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: bothlist.length),
        )
      ],
    );
  }
}
