import 'package:flutter/material.dart';

import 'detail_artical.dart';

class articals extends StatefulWidget {
  @override
  _articalsState createState() => _articalsState();
}

final topAppBar = AppBar(
  centerTitle: true,
  elevation: 0.1,
  backgroundColor: Color(0xff00C4B1),
  title: Text("Articals"),
//  actions: <Widget>[
//    IconButton(
//      icon: Icon(Icons.list),
//      onPressed: () {},
//    )
//  ],
);

class _articalsState extends State<articals> {
  List articls;

  @override
  void initState() {
    articls = getArtical();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Artical artical) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.library_books, color: Colors.white),
          ),
          title: Text(
            artical.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Text(artical.writer, style: TextStyle(color: Colors.white)),
          trailing: Icon(Icons.arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
//        Navigator.push(
//            context,
//            MaterialPageRoute(
//                builder: (context) => detail_artical()));
          },
        );

    Card makeCard(Artical lesson) => Card(
          color: Colors.transparent,
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(93, 87, 107, .9),
                borderRadius: BorderRadius.circular(14)),
            child: makeListTile(lesson),
          ),
        );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: articls.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(articls[index]);
        },
      ),
    );

    return Scaffold(
        backgroundColor: Color(0xff00C4B1),
        appBar: topAppBar,
        body: makeBody,

    );
  }

  List getArtical() {
    return [
      Artical(
          title: "Why Do Babies Cry on Airplanes?",
          writer: "JANE LABOUS",
          content:
              "Whether you're the long-suffering parent or an unlucky passenger sitting in a neighboring row, a crying baby on an airplane is never fun. We've all been there. As the plane ascends or descends, baby feels the scary sensation of her or his ears popping, and a whimper that turns into a high-pitched shriek fills the cabin."),
      Artical(
          title: "Why Do Babies Babble?",
          writer: "Emma Bryce",
          content:
              "If babies had a universal trait, it would have to be their babbling. During the earliest months of their lives, babies' interactions with us basically boil down to strings of ba's, ga's and da's, punctuated by the occasional gurgle or wet raspberry."),
      Artical(
          title: "Why Don't Newborns Have Tears or Sweat?",
          writer: "Marcus Woo",
          content:
              "Upon entering the world, a newborn lets out a loud, distinct cry — a sign of health and vigor. It's a cry that new parents will quickly become used to in the coming days and weeks. But if you look closely, you'll see that a newborn's cry is a bit different from an older infant's: there are no tears."),
      Artical(
          title: "Why Do Babies Barely Blink?",
          writer: "Bahar Gholipour",
          content:
              "Stare into a baby's eyes, and you might notice something odd: Babies rarely blink.As numerous studies have documented, adults, blink about 15 times a minute, on average. But newborns and infants blink far less often only a handful of times every minute, with some babies blinking as infrequently as once a minute."),
      Artical(
          title: "Why Do Babies Kick in the Womb?",
          writer: "Kimberly Hickok",
          content:
              "The first time a pregnant woman feels her baby kick can be surprising — a sudden reminder that the tiny creature growing inside her has a mind of its own. But why do babies kick?Though the womb is a tight space in which to exercise, it turns out that those kicks are vital for the baby's healthy bone and joint development, an expert told Live Science."),
    ];
  }
}

class Artical {
  String title;
  String writer;
  String content;

  Artical({this.title, this.writer, this.content});
}
