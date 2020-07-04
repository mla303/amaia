import 'package:flutter/material.dart';

import 'saveinfo.dart';



class walkthrough_2 extends StatefulWidget {

  @override
  _walkthrough_2State createState() => _walkthrough_2State();
}

class _walkthrough_2State extends State<walkthrough_2> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Image.asset("assets/images/walkthrough.png",
          scale: 5,),

          SizedBox(
            height: height / 20,
          ),


          Text(
            'Ready to Learn',
            style: TextStyle(
              fontFamily: 'Constantia',
              fontSize: 30,
              color: const Color(0xff00C4B1),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: height / 60,
          ),

          Text(
            'To keep connected with us login with you personal info.To keep connected with us login with you personal info.',
            style: TextStyle(
              fontFamily: 'Constantia',
              fontSize: 18,
              color: const Color(0xffb1b1b1),
              height: 1.6666666666666667,
            ),
            textAlign: TextAlign.center,
          ),


          SizedBox(
            height: height / 60,
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


              color: Color(0xff00C4B1),
              textColor: Colors.white,
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: height/40,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => saveinfo()));
              },
            ),
          ),

          SizedBox(
            height: height / 60,
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


              color: Color(0xffb1b1b1),
              textColor: Colors.white,
              child: Text(
                'Skip for Now',
                style: TextStyle(
                  fontFamily: 'Constantia',
                  fontSize: height/40,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => saveinfo()));
              },
            ),
          ),


        ],
      ),
    );
  }
}

