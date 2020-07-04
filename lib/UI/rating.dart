import 'package:flutter/material.dart';
import 'package:gender_selection/gender_selection.dart';
import 'navigation_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class rating extends StatefulWidget {

  @override
  _ratingState createState() => _ratingState();
}

class _ratingState extends State<rating> {

  double _rating;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffff9f8f),
        title: Text(""),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width/1.1,
            //color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                SizedBox(
                  height: height / 12,
                ),


                Center(
                  child: Image.asset("assets/images/logo.png",
                    height: height/14,),
                ),


                SizedBox(
                  height: height / 10,
                ),


                Text(
                  'How was your experience with us? ',
                  style: TextStyle(
                    fontFamily: 'Constantia',
                    fontSize: 16,
                    color: const Color(0xffff9f8f),
                    height: 1.4210526315789473,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: height / 30,
                ),


            RatingBar(
              initialRating: 3,
              itemCount: 5,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return Icon(
                      Icons.sentiment_very_dissatisfied,
                      color: Colors.red,
                    );
                  case 1:
                    return Icon(
                      Icons.sentiment_dissatisfied,
                      color: Colors.redAccent,
                    );
                  case 2:
                    return Icon(
                      Icons.sentiment_neutral,
                      color: Colors.amber,
                    );
                  case 3:
                    return Icon(
                      Icons.sentiment_satisfied,
                      color: Colors.lightGreen,
                    );
                  case 4:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );
                }
              },
              onRatingUpdate: (rating) {

                setState(() {
                  _rating = rating;
                });
                print(rating);
              },
            ),

                SizedBox(
                  height: height/60,
                ),

                Text(
                  _rating.toString(),
                  style: TextStyle(
                    fontFamily: 'Constantia',
                    fontSize: 16,
                    color: const Color(0xffff9f8f),
                    height: 1.4210526315789473,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: height/20,
                ),
                ButtonTheme(
                  minWidth: width / 1.1,
                  height: height / 15,

                  child: FlatButton(

                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0),
//                        side: BorderSide(color: Color(0xffff351f)
//                        )
                    ),


                    color: Color(0xffff9f8f),
                    textColor: Colors.white,
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: height/40,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {

                    },
                  ),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
