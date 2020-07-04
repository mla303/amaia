import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:jiffy/jiffy.dart';

class temperature extends StatefulWidget {
  @override
  _temperatureState createState() => _temperatureState();
}

class _temperatureState extends State<temperature> {
  List<String> temperatureList = [];

//  List<String> scales = ["\u2103", "\u2109",];
  String selectedsclae = '\u2103';

  String currnt = Jiffy().yMMMEdjm;

  TextEditingController temperatureText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff00C4B1),
        title: Text("Temperature"),

//          leading: new IconButton(icon: new Icon(Icons.menu),
////          onPressed: () => ,
//          ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
//      mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: height / 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: width / 4,
//                height: height,
                    child: TextFormField(
                      controller: temperatureText,
                      inputFormatters: [LengthLimitingTextInputFormatter(3)],
                      style: TextStyle(
                          color: Color(0xff00C4B1), fontSize: height / 20),
                      cursorColor: Color(0xff00C4B1),

                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
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
                  DropdownButton<String>(
                      value: selectedsclae,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xff00C4B1),
                        size: 30,
                      ),
                      elevation: 16,
                      style: TextStyle(
                          color: Color(0xff00C4B1), fontSize: height / 28),
                      underline: Container(
                        height: 2,
//                      color: Colors.lightBlueAccent,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          selectedsclae = newValue;
                        });
                      },
                      items: <String>['\u2103', '\u2109']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList())
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
                    temperatureList.add(temperatureText.text);
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
                              child: new Image.asset(
                                "assets/images/temperature.png",
                                color: Colors.white,
                                scale: 8,
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
                            temperatureList[index],
                            style: TextStyle(
                                color: Color(0xff00C4B1),
                                fontWeight: FontWeight.w500,
                                fontSize: height / 42),
                          ),
                          Text(
                            selectedsclae,
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
                          temperatureList.removeWhere((currentItem) =>
                              temperatureList[index] == currentItem);
                        });
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: temperatureList.length),
            )
          ],
        ),
      ),
    );
  }
}
