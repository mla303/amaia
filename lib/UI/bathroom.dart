import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:jiffy/jiffy.dart';

class bathroom extends StatefulWidget {
  @override
  _bathroomState createState() => _bathroomState();
}

class _bathroomState extends State<bathroom> {
  List<String> _bathroomList = [];

  var newlist;

  List<String> reportList = [
//    "I Used a Shampoo",
    "Hair Wash",
//    "Done Both",
//    "Nothing from Them",
  ];

  List<String> selectedReportList = List();

  String selectedsclae = '\u2103';

  String currnt = Jiffy().yMMMEdjm;

  TextEditingController bathText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff00C4B1),
        title: Text("Bath Time"),

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  MultiSelectChip(
                    reportList,
                    onSelectionChanged: (selectedList) {
                      setState(() {
                        selectedReportList = selectedList;
                        print(selectedReportList);
                      });
                    },
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
                    // _bathroomList.add(bathText.text);

                    newlist = List.from(selectedReportList);

                    _bathroomList.add(newlist.toString());

//                    selectedReportList.forEach((item){
//                      concatenate.write(item);
//                    });
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
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                  child: new Image.asset(
                                    "assets/images/bathroom_icon.png",
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
                            ],
                          ),
                          Container(
                              width: width / 1.2,
                              child: Text(
                                _bathroomList[index],
                                style: TextStyle(
                                    color: Color(0xff00C4B1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: height / 42),
                              )),
                        ],
                      ),
                      trailing: Icon(
                        Icons.delete,
                        color: Color(0xff00C4B1),
                      ),
                      onTap: () {
                        setState(() {
                          _bathroomList.removeWhere((currentItem) =>
                              _bathroomList[index] == currentItem);
                        });
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: _bathroomList.length),
            )
          ],
        ),
      ),
    );
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = List();

  _buildChoiceList() {
    List<Widget> choices = List();

    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          selectedColor: Color(0xff00C4B1),
          backgroundColor: Colors.blueGrey,
          label: Text(
            item,
            style: TextStyle(color: Colors.white),
          ),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
