import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch/custom_switch.dart';

class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  bool breastfeed = false;
  bool bottle = false;
  bool diaper = false;
  bool sleep = false;
  bool meeal = false;
  bool pumping = false;
  bool medicince = false;
  bool temp = false;
  bool bathroom = false;
  bool growth = false;

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
          title: Text("Settings"),

//          leading: new IconButton(icon: new Icon(Icons.menu),
////          onPressed: () => ,
//          ),
        ),
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height / 60,
              ),
              Text(
                "Edit Tool List",
                style: TextStyle(
                  fontSize: height / 34,
                  color: Color(0xff00C4B1),
                ),
              ),
              SizedBox(
                height: height / 60,
              ),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/Breastfeeding.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Breast Feeding"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: breastfeed,
                      onChanged: (value) {
                        setState(() {
                          breastfeed = value;
                        });
                        print(value);
                      },
                    ),
                  )),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/feeding.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Meal"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: meeal,
                      onChanged: (value) {
                        setState(() {
                          meeal = value;
                        });
                        print(value);
                      },
                    ),
                  )),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/diaper.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Diaper"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: diaper,
                      onChanged: (value) {
                        setState(() {
                          diaper = value;
                        });
                        print(value);
                      },
                    ),
                  )),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/sleeping.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Sleep"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: sleep,
                      onChanged: (value) {
                        setState(() {
                          sleep = value;
                        });
                        print(value);
                      },
                    ),
                  )),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/bottle.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Bottle"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: bottle,
                      onChanged: (value) {
                        setState(() {
                          bottle = value;
                        });
                        print(value);
                      },
                    ),
                  )),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/pumping.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Pumping"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: pumping,
                      onChanged: (value) {
                        setState(() {
                          pumping = value;
                        });
                        print(value);
                      },
                    ),
                  )),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/medicane.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Medication"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: medicince,
                      onChanged: (value) {
                        setState(() {
                          medicince = value;
                        });
                        print(value);
                      },
                    ),
                  )),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/temprature.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Temperature"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: temp,
                      onChanged: (value) {
                        setState(() {
                          temp = value;
                        });
                        print(value);
                      },
                    ),
                  )),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/bathroom.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Bathroom"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: bathroom,
                      onChanged: (value) {
                        setState(() {
                          bathroom = value;
                        });
                        print(value);
                      },
                    ),
                  )),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff00C4B1),
                    radius: 21,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/growth.png"),
                      backgroundColor: Colors.transparent,
                      radius: 20,
                    ),
                  ),
                  title: Text("Growth"),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: CustomSwitch(
                      activeColor: Color(0xff00C4B1),
                      value: growth,
                      onChanged: (value) {
                        setState(() {
                          growth = value;
                        });
                        print(value);
                      },
                    ),
                  )),
            ],
          ),
        ));
  }
}
