import 'dart:async';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:jiffy/jiffy.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

enum WidgetMarker {
  weight,
  ruller,
  head,
}

class growth extends StatefulWidget {
  @override
  _growthState createState() => _growthState();
}

class _growthState extends State<growth> {
  List<String> weightList = [];

  List<String> rullerList = [];

  List<String> babyheadList = [];

  int heightValues = 0;

  bool running = false;

  String currnt = Jiffy().yMMMEdjm;

  WidgetMarker selectedwidgetMarker = WidgetMarker.weight;

  int insialevalue = 25;
  int weighcounter = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff00C4B1),
        title: Text("Growth"),

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
                                selectedwidgetMarker = WidgetMarker.weight;
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
                                          WidgetMarker.weight
                                      ? Colors.white
                                      : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                  child: new Image.asset(
                                "assets/images/weight.png",
                                color:
                                    selectedwidgetMarker == WidgetMarker.weight
                                        ? Color(0xff00C4B1)
                                        : Colors.white,
                              )),
                            )),
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedwidgetMarker = WidgetMarker.ruller;
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
                                          WidgetMarker.ruller
                                      ? Colors.white
                                      : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                  child: new Image.asset(
                                "assets/images/ruler.png",
                                color:
                                    selectedwidgetMarker == WidgetMarker.ruller
                                        ? Color(0xff00C4B1)
                                        : Colors.white,
                              )),
                            )),
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedwidgetMarker = WidgetMarker.head;
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
                                      selectedwidgetMarker == WidgetMarker.head
                                          ? Colors.white
                                          : Colors.transparent),
                              padding: new EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 10.0),

                              child: Center(
                                child: new Image.asset(
                                  "assets/images/baby_head.png",
                                  color:
                                      selectedwidgetMarker == WidgetMarker.head
                                          ? Color(0xff00C4B1)
                                          : Colors.white,
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

  String weightmeasure = "kg";
  String heightmeasure = "in";
  String headmeasure = "in";
  String rulerdot = ".";

  int height1stvalue = 20;
  int height2ndvalue = 25;

  int head1stvalue = 20;
  int head2ndvalue = 35;

  Widget getCustomContainor() {
    switch (selectedwidgetMarker) {
      case WidgetMarker.weight:
        return weightContainer();
      case WidgetMarker.ruller:
        return rullerContainer();
      case WidgetMarker.head:
        return babyHeadContainer();
    }
    return weightContainer();
  }

  Widget weightContainer() {
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
//               color: Colors.blue,
                  height: height / 4.8,
                  width: width / 4,
                  child: Column(
                    children: <Widget>[
                      Theme(
                        data: Theme.of(context).copyWith(
                          accentColor: Color(0xff00C4B1),
                        ),
                        child: NumberPicker.integer(
                            initialValue: insialevalue,
                            minValue: 0,
                            maxValue: 50,
                            onChanged: (newvalue) =>
                                setState(() => insialevalue = newvalue)),
                      ),
                    ],
                  )),
              Text(
                "$weightmeasure",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
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
              'Save',
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff00C4B1),
            onPressed: () {
              setState(() {
                weightList.add(insialevalue.toString());
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
          height: height / 3.4,
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
                            "assets/images/weight.png",
                            color: Colors.white,
                            scale: 7,
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
                        weightList[index],
                        style: TextStyle(
                          color: Color(0xff00C4B1),
                        ),
                      ),
                      Text(
                        " " + weightmeasure,
                        style: TextStyle(
                          color: Color(0xff00C4B1),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color: Color(0xff00C4B1),
                  ),
                  onTap: () {
                    setState(() {
                      weightList.removeWhere(
                          (currentItem) => weightList[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: weightList.length),
        )
      ],
    );
  }

  Widget rullerContainer() {
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
//               color: Colors.blue,
                  height: height / 4.9,
                  width: width / 8,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      accentColor: Color(0xff00C4B1),
                    ),
                    child: NumberPicker.integer(
                        initialValue: height1stvalue,
                        minValue: 14,
                        maxValue: 55,
                        onChanged: (newvalue) =>
                            setState(() => height1stvalue = newvalue)),
                  )),
              Text(
                "$rulerdot",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff00C4B1),
                ),
              ),
              Container(
//               color: Colors.blue,
                  height: height / 4.9,
                  width: width / 8,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      accentColor: Color(0xff00C4B1),
                    ),
                    child: NumberPicker.integer(
                        initialValue: height2ndvalue,
                        minValue: 0,
                        maxValue: 75,
                        onChanged: (newvaluess) =>
                            setState(() => height2ndvalue = newvaluess)),
                  )),
              Text(
                "$heightmeasure",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
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
              'Save',
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff00C4B1),
            onPressed: () {
              setState(() {
                rullerList.add(height1stvalue.toString());
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
          height: height / 3.4,
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
                            "assets/images/weight.png",
                            color: Colors.white,
                            scale: 7,
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
                        rullerList[index],
                        style: TextStyle(
                          color: Color(0xff00C4B1),
                        ),
                      ),
                      Text(
                        " " + heightmeasure,
                        style: TextStyle(
                          color: Color(0xff00C4B1),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color: Color(0xff00C4B1),
                  ),
                  onTap: () {
                    setState(() {
                      rullerList.removeWhere(
                          (currentItem) => rullerList[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: weightList.length),
        )
      ],
    );
  }

  Widget babyHeadContainer() {
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
//               color: Colors.blue,
                  height: height / 4.9,
                  width: width / 8,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      accentColor: Color(0xff00C4B1),
                    ),
                    child: NumberPicker.integer(
                        initialValue: head1stvalue,
                        minValue: 14,
                        maxValue: 55,
                        onChanged: (newvalue) =>
                            setState(() => head1stvalue = newvalue)),
                  )),
              Text(
                "$rulerdot",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color:Color(0xff00C4B1),
                ),
              ),
              Container(
//               color: Colors.blue,
                  height: height / 4.9,
                  width: width / 8,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      accentColor: Color(0xff00C4B1),
                    ),
                    child: NumberPicker.integer(
                        initialValue: head2ndvalue,
                        minValue: 0,
                        maxValue: 75,
                        onChanged: (newvaluess) =>
                            setState(() => head2ndvalue = newvaluess)),
                  )),
              Text(
                "$headmeasure",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
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
              'Save',
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff00C4B1),
            onPressed: () {
              setState(() {
                babyheadList.add(head1stvalue.toString());
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
          height: height / 3.4,
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
                            "assets/images/weight.png",
                            color: Colors.white,
                            scale: 7,
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
                        babyheadList[index],
                        style: TextStyle(
                          color: Color(0xff00C4B1),
                        ),
                      ),
                      Text(
                        " " + headmeasure,
                        style: TextStyle(
                          color: Color(0xff00C4B1),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color: Color(0xff00C4B1),
                  ),
                  onTap: () {
                    setState(() {
                      babyheadList.removeWhere(
                          (currentItem) => babyheadList[index] == currentItem);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: weightList.length),
        )
      ],
    );
  }
}
