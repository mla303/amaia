import 'package:amaia/UI/bathroom.dart';
import 'package:amaia/UI/breastfeed.dart';
import 'package:amaia/UI/graph.dart';
import 'package:amaia/UI/growth.dart';
import 'package:amaia/UI/meal.dart';
import 'package:amaia/UI/medicane.dart';
import 'package:amaia/UI/navigation_bar.dart';
import 'package:amaia/UI/pumping.dart';
import 'package:amaia/UI/rating.dart';
import 'package:amaia/UI/setting.dart';
import 'package:amaia/UI/sleep.dart';
import 'package:amaia/UI/temperature.dart';
import 'package:amaia/UI/updateprofile.dart';
import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';
import 'about_us.dart';
import 'bottle.dart';
import 'diaper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

//          leading: new IconButton(icon: new Icon(Icons.menu),
////          onPressed: () => ,
//          ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => updateprofile()));
                },
                child: Icon(
                  Icons.settings,
                  size: 26.0,
                ),
              )),
        ],
      ),
      drawer: Container(
        width: 250,
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xff00C4B1),
          ),
          child: Drawer(
            elevation: 20,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(220, 120)),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff00C4B1),
                          radius: 31,
                          child: CircleAvatar(
                            backgroundColor: Colors.white70,
                            backgroundImage:
                                AssetImage("assets/images/profile.png"),
                            radius: 30,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center + Alignment(.1, 0),
                        child: Text(
                          'Luqman Asif',
                          style:
                              TextStyle(color: Color(0xff00C4B1), fontSize: 16),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft + Alignment(0.9, .3),
                        child: Text(
                          '134 Days',
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                ListTile(
                  dense: false,
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    'Home',
                    style:
                        TextStyle(color: Colors.white, fontSize: height / 55),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => navigation_bar()));
                  },
                ),
                ListTile(
                  dense: false,
                  leading: Icon(
                    Icons.show_chart,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    'Chart',
                    style:
                        TextStyle(color: Colors.white, fontSize: height / 55),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => graph_chart()));
                  },
                ),
                ListTile(
                  dense: false,
                  leading: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    'Rate 5 Star',
                    style:
                        TextStyle(color: Colors.white, fontSize: height / 55),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => rating()));
                  },
                ),
                ListTile(
                  dense: false,
                  leading: Icon(
                    Icons.perm_contact_calendar,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    'Contact Us',
                    style:
                        TextStyle(color: Colors.white, fontSize: height / 55),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xff00C4B1),
            width: width,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 42,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage:
                        ExactAssetImage('assets/images/people.JPG'),
                    backgroundColor: Colors.transparent,
                    radius: 40,
                  ),

//                  minRadius: height / 20,
//                  maxRadius: height / 15,
                ),
                Text(
                  'Luqman Asif',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: height / 40,
//                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: height / 46,
                ),
                Container(
                  width: width / 1.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //days
                      Column(
                        children: <Widget>[
                          Text(
                            'Days',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height / 40,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height / 80,
                          ),
                          Text(
                            '$days',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height / 40,
//                      fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),

                      //month
                      Column(
                        children: <Widget>[
                          Text(
                            'Month',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height / 40,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height / 80,
                          ),
                          Text(
                            '$month',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height / 40,
//                      fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),

                      //year
                      Column(
                        children: <Widget>[
                          Text(
                            'Year',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height / 40,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height / 80,
                          ),
                          Text(
                            '$year',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height / 40,
//                      fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
              ],
            ),
          ),
          SizedBox(
            height: height / 50,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
//                1st Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => breastfeed()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/Breastfeeding.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Breast Feed",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),

                    new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pumping()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/pumping.jpeg",
                              scale: 11,
                            ),
                            Text(
                              "Pumping",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => diaper()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/diaper.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Diaper",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                  ],
                ),

                SizedBox(
                  height: height / 40,
                ),

//                2nd Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => sleep()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/sleeping.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Sleep",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => bottle()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/bottle.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Bottle",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => meal()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/feeding.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Meal",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                  ],
                ),

                SizedBox(
                  height: height / 40,
                ),

//                3rd Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => medicane()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/medicane.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Medication",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => temperature()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/temprature.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Temperature",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => bathroom()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/bathroom.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Bath Time",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                  ],
                ),

                SizedBox(
                  height: height / 40,
                ),

//                4th row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => growth()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/growth.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Growth",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                    new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => setting()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/setting.png",
                              scale: 4.2,
                            ),
                            Text(
                              "Setting",
                              style: TextStyle(
                                  color: Color(0xff00C4B1),
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
