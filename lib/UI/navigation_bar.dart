import 'dart:core';
import 'package:amaia/UI/tools.dart';
import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'Articals.dart';
import 'Home.dart';
import 'calendar.dart';
import 'graph.dart';
import 'updateprofile.dart';



//void main() => runApp(MaterialApp(home: BottomNavBar()));

class navigation_bar extends StatefulWidget {
  @override
  //_BottomNavBarState createState() => _BottomNavBarState();
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavBarState();
  }
}

class _BottomNavBarState extends State<navigation_bar> {
  int selectedpage = 2;
  final pageoption = [
    graph_chart(),
    tools(),
    Home(),
    updateprofile(),
    Calender(),


  ];

  GlobalKey _bottomNavigationKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageoption[selectedpage],
      bottomNavigationBar: FFNavigationBar(
        key: _bottomNavigationKey,

        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          //selectedItemBorderColor: Colors.black45,
          selectedItemBackgroundColor: Color(0xff00C4B1),
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black38,
//          showSelectedItemShadow:
        barHeight: 40,

        ),


        selectedIndex: selectedpage,

        onSelectTab: (index) {
          setState(() {
            if(index == 3)
            {
//              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SignIn()));
            }



            selectedpage = index;
          });
        },


        items: [

          FFNavigationBarItem(
            iconData: Icons.show_chart,
            label: '',
          ),
          FFNavigationBarItem(
            iconData: Icons.widgets,
            label: '',
          ),
          FFNavigationBarItem(
            iconData: Icons.home,
            label: '',
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: '',
          ),
          FFNavigationBarItem(
            iconData: Icons.calendar_today,
            label: '',
          ),
        ],


//        items: <Widget>[
//          Icon(Icons.people, size: 30),
//          Icon(Icons.home, size: 30),
//          Icon(Icons.account_box, size: 30),
//          Icon(Icons.exit_to_app, size: 30),
//        ],
//        color: Colors.black12,
//        //buttonBackgroundColor: Colors.white,
//        backgroundColor: Colors.transparent,
//        animationCurve: Curves.easeInOut,
        //animationDuration: Duration(milliseconds: 500),
//        onTap: (index) {
//          setState(() {
//
//            if(index == 3)
//            {
//              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SignIn()));
//             // MainScreen();
//            }
//
//            selectedpage = index;
//          });
//        },
      ),
//        Container(
//          color: Colors.blueAccent,
//          child: Center(
//            child: Column(
//              children: <Widget>[
//                Text(_page.toString(), textScaleFactor: 10.0),
//                RaisedButton(
//                  child: Text('Go To Page of index 1'),
//                  onPressed: () {
//                    final CurvedNavigationBarState navBarState =
//                        _bottomNavigationKey.currentState;
//                    navBarState.setPage(1);
//                  },
//                )
//              ],
//            ),
//          ),
//        )


    );
  }
}
