import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class AboutUs extends StatelessWidget {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
      centerTitle: true,
      backgroundColor: Color(0xffff9f8f),
      title: Text("Contact Us"),
    ),

      body: Center(
        child: Container(
//              color: Colors.red,
          width: width/1.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: height/40,),
              Text("Contact Us",
                style: TextStyle(fontSize: height/38,fontWeight: FontWeight.bold,color: Color(0xffff9f8f),),),

              SizedBox(height: height/20,),


              Row(
                children: <Widget>[

                  Icon(Icons.email,size: 28,color: Color(0xffff9f8f),),
                  SizedBox(width: width/30,),
                  Text("information@amaia.us",
                    style: TextStyle(
                        fontSize: height/38,
                        color: Colors.black38
                    ),),
                ],
              ),
              SizedBox(height: height/80,),


              Row(
                children: <Widget>[

                  Icon(Icons.phone,size: 28,color: Color(0xffff9f8f),),
                  SizedBox(width: width/30,),
                  Text("923.2350.77538",
                    style: TextStyle(
                        fontSize: height/38,
                        color: Colors.black38
                    ),),
                ],
              ),
              SizedBox(height: height/80,),

              Row(
                children: <Widget>[

                  Icon(Icons.alternate_email,size: 28,color: Color(0xffff9f8f),),
                  SizedBox(width: width/30,),
                  Text("Amaia",
                    style: TextStyle(
                        fontSize: height/38,
                      color: Colors.black38
                    ),),
                ],
              ),
              SizedBox(height: height/10,),


//                    Text("or leave us a message below",
//                      style: TextStyle(fontSize: height/38,fontWeight: FontWeight.bold,color: Color(0xff634670),),),
//                    SizedBox(height: height/60,),
//
//                    Container(
//                      width: width / 1.3,
//                      child: TextFormField(
//                        keyboardType: TextInputType.text,
//                        // obscureText: true,
//                        decoration: new InputDecoration(
//                          labelText: "Name*",
//                          fillColor: Colors.blueGrey,
//                          border: new OutlineInputBorder(
//                            borderRadius: new BorderRadius.circular(10.0),
//                            borderSide: new BorderSide(color: Colors.grey),
//                          ),
//                          //fillColor: Colors.green
//                        ),
//                      ),
//                    ),
//                    SizedBox(
//                      //width: width/1,
//                      height: height / 25,
//                    ),
//                    Container(
//                      width: width / 1.3,
//                      child: TextFormField(
//                        keyboardType: TextInputType.emailAddress,
//                        //obscureText: true,
//                        decoration: new InputDecoration(
//                          labelText: "Email*",
//                          fillColor: Colors.blueGrey,
//                          border: new OutlineInputBorder(
//                            borderRadius: new BorderRadius.circular(10.0),
//                            borderSide: new BorderSide(color: Colors.grey),
//                          ),
//                          //fillColor: Colors.green
//                        ),
//                      ),
//                    ),
//                    SizedBox(
//                      //width: width/1,
//                      height: height / 25,
//                    ),
//                    Container(
//                      width: width / 1.3,
//                      child: TextFormField(
//                        maxLength: 300,
//                        keyboardType: TextInputType.text,
//                        //obscureText: true,
//                        decoration: new InputDecoration(
//                          labelText: "Message*",
//                          fillColor: Colors.blueGrey,
//                          border: new OutlineInputBorder(
//                            borderRadius: new BorderRadius.circular(10.0),
//                            borderSide: new BorderSide(color: Colors.grey),
//                          ),
//                          //fillColor: Colors.green
//                        ),
//                      ),
//                    ),
//                    SizedBox(
//                      //width: width/1,
//                      height: height / 60,
//                    ),




//                    ButtonTheme(
//                      minWidth: width / 2,
//                      height: height / 17,
//                      child: FlatButton(
//                        shape: new RoundedRectangleBorder(
//                            borderRadius: new BorderRadius.circular(4.0),
//                            side: BorderSide(color: Color(0xff634670),
//                            )
//                        ),
//                        color: Colors.white,
//                        textColor: Color(0xff634670),
//                        child: Text(
//                          "SEND",
//                          style: TextStyle(
//                              fontSize: width / 25,
//                              fontWeight: FontWeight.bold),
//                        ),
//                        onPressed: () {
//
////                            Navigator.push(
////                                context,
////                                MaterialPageRoute(
////                                    builder: (context) => QOLproductsUser()));
//
//                        },
//                      ),
//                    ),
            ],
          ),
        ),
      ),

    );
  }
}
