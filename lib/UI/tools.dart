import 'package:amaia/UI/Articals.dart';
import 'package:amaia/UI/baby_lullaby.dart';
import 'package:amaia/UI/calendar.dart';
import 'package:flutter/material.dart';

import 'detail_artical.dart';
import 'notes.dart';

class tools extends StatefulWidget {
  @override
  _toolsState createState() => _toolsState();
}

final topAppBar = AppBar(
  centerTitle: true,
  elevation: 0.1,
  backgroundColor: Colors.white70,
  title: Text("Tools",style: TextStyle(
    fontSize: 30,
    color: Color(0xff00C4B1),
  ),),
//  actions: <Widget>[
//    IconButton(
//      icon: Icon(Icons.list),
//      onPressed: () {},
//    )
//  ],
);

class _toolsState extends State<tools> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: topAppBar,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: Size(height/6, height/6), // button width and height
                  child: Card(
                    color: Colors.transparent,
                    elevation: 10,
                    child: Material(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xff00C4B1), // button color
                      child: InkWell(
                        splashColor: Colors.green, // splash color
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => articals()));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Tab(
                              icon: Image.asset("assets/images/artical.png",
                                color: Colors.white70,
                              ),
                            ),// icon
                            SizedBox(
                              height: height/60,
                            ),
                            Text("Articals",
                              style: TextStyle(
                                  color: Colors.white
                              ),), // text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox.fromSize(
                  size: Size(height/6, height/6), // button width and height
                  child: Card(
                    color: Colors.transparent,
                    elevation: 10,
                    child: Material(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xff00C4B1), // button color
                      child: InkWell(
                        splashColor: Colors.green, // splash color
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Sounds_Page()));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Tab(
                              icon: Image.asset("assets/images/lullaby.png",
                                color: Colors.white70,
                                ),
                            ),// icon
                            SizedBox(
                              height: height/60,
                            ),
                            Text("Baby Lullaby",
                            style: TextStyle(
                              color: Colors.white
                            ),), // text
                          ],
                        ),
                      ),
                    ),
                  ),
                )



              ],
            ),
            SizedBox(
              height: height/30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[


                SizedBox.fromSize(
                  size: Size(height/6, height/6), // button width and height
                  child: Card(
                    color: Colors.transparent,
                    elevation: 10,
                    child: Material(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xff00C4B1), // button color
                      child: InkWell(
                        splashColor: Colors.green, // splash color
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => notes()));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Tab(
                              icon: Image.asset("assets/images/notes.png",
                                color: Colors.white70,
                              ),
                            ),// icon
                            SizedBox(
                              height: height/60,
                            ),
                            Text("Notes",
                              style: TextStyle(
                                  color: Colors.white
                              ),), // text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox.fromSize(
                  size: Size(height/6, height/6), // button width and height
                  child: Card(
                    color: Colors.transparent,
                    elevation: 10,
                    child: Material(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xff00C4B1), // button color
                      child: InkWell(
                        splashColor: Colors.green, // splash color
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Calender()));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Tab(
                              icon: Image.asset("assets/images/calendar.png",
                                color: Colors.white70,
                              ),
                            ),// icon
                            SizedBox(
                              height: height/60,
                            ),
                            Text("Calendar",
                              style: TextStyle(
                                  color: Colors.white
                              ),), // text
                          ],
                        ),
                      ),
                    ),
                  ),
                )



              ],
            )
          ],
        ),
      ),
    );
  }


}
