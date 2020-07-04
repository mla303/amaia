import 'package:flutter/material.dart';
import 'package:gender_selection/gender_selection.dart';
import 'navigation_bar.dart';


class login extends StatefulWidget {

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {


  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width/1.1,
            //color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(
                  height: height / 12,
                ),


                Center(
                  child: Image.asset("assets/images/logo.png",
                    height: height/12,),
                ),


                SizedBox(
                  height: height / 30,
                ),


                Text(
                  'Almost there! jst input Your record.',
                  style: TextStyle(
                    fontFamily: 'Constantia',
                    fontSize: 19,
                    color: const Color(0xff00C4B1),
                    height: 1.4210526315789473,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: height / 30,
                ),

                Text(
                  'Email',
                  style: TextStyle(
                    fontFamily: 'Constantia',
                    fontSize: 15,
                    color: const Color(0xffc3c3c3),
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(
                  height: height / 80,
                ),

                Container(
                  width: width / 1.1,
                  height: height / 15,
                  child: Theme(
                    data: new ThemeData(
                      //primaryColor: Colors.black12,
                      //primaryColorDark: Colors.grey,
                    ),
                    child: Center(
                      child: TextFormField(
                        style: TextStyle(color: Color(0xff00C4B1),),
                        cursorColor: Color(0xff00C4B1),
                        keyboardType: TextInputType.text,



                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Colors.black12,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 3.0),
                          ),
                          hintText: "JohnDoe@gmail.com",
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
                  ),
                ),



                SizedBox(
                  height: height / 30,
                ),

                Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Constantia',
                    fontSize: 15,
                    color: const Color(0xffc3c3c3),
                  ),
                  textAlign: TextAlign.left,
                ),


                SizedBox(
                  height: height / 80,
                ),


//

                Container(
                  width: width / 1.1,
                  height: height / 15,
                  child: Theme(
                    data: new ThemeData(
                      //primaryColor: Colors.black12,
                      //primaryColorDark: Colors.grey,
                    ),
                    child: Center(
                      child: TextFormField(
                        style: TextStyle(color: Color(0xff00C4B1),),
                        cursorColor: Color(0xff00C4B1),
                        keyboardType: TextInputType.text,
                        obscureText: true,


                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Colors.black12,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 3.0),
                          ),
                          hintText: "******",
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
                  ),
                ),




                SizedBox(
                  height: height / 28,
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
                      'Login',
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
                              builder: (context) => navigation_bar()));
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
