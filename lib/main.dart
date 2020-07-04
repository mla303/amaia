import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'UI/Splash.dart';
import 'UI/sample.dart';
import 'UI/walkthrough_1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      title: 'Flutter Demo',

      home: Splash(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new walkthrough_1()
      },
    );
  }
}