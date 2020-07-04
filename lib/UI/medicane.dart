import 'dart:async';
import 'package:jiffy/jiffy.dart';
import 'package:flutter/material.dart';

class medicane extends StatefulWidget {
  @override
  _medicaneState createState() => _medicaneState();
}

class _medicaneState extends State<medicane> {
  String currnt = Jiffy().yMMMEdjm;

  List<String> medicineList = [];
  TextEditingController medicineText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff00C4B1),
        title: Text("Medication"),
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
                width: width / 1.1,
                //color: Colors.pinkAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Enter Medicine",
                      style: TextStyle(
                          color: Color(0xff00C4B1),
                          fontWeight: FontWeight.bold,
                          fontSize: height / 40),
//          textAlign: TextAlign.start,
                    ),
                    Container(
                      width: width / 1.3,
//                height: height,
                      child: TextField(
                        controller: medicineText,
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
                          fontSize: height / 40),
//          textAlign: TextAlign.start,
                    ),
                    Container(
                      width: width / 1.3,
//                height: height,
                      child: TextField(
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
                      medicineList.add(medicineText.text);
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
                                  Icons.fiber_smart_record,
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
                            Text(
                              medicineList[index],
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
                            medicineList.removeWhere((currentItem) =>
                                medicineList[index] == currentItem);
                          });
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: medicineList.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
