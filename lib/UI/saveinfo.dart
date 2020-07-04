import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gender_selection/gender_selection.dart';
import 'navigation_bar.dart';


class saveinfo extends StatefulWidget {

  @override
  _saveinfoState createState() => _saveinfoState();
}

class _saveinfoState extends State<saveinfo> {


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

  int _value = 0;



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
                  'Please fill information completely  to \nbenefit from the application',
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
                  'Baby name',
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
                          hintText: "John Doe",
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
                  'Date of Birth *',
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

                ButtonTheme(
                  minWidth: width/1.1,
                  height: height/15,
                  child: FlatButton(

                    shape: new RoundedRectangleBorder(


                      borderRadius: new BorderRadius.circular(3.0),
                      //    side: BorderSide(color: Color(0xff2CBE77))
                    ),


                    color: Colors.black12,
                    textColor: Color(0xff00C4B1),

                    child: Text(
                      "${selectedDate.toLocal()}".split(' ')[0],
                      style: TextStyle(
                          fontSize: height / 50,
                          fontWeight: FontWeight.w500
                        //letterSpacing: 1
                      ),
                      textAlign: TextAlign.left,

                    ),


                    onPressed: () {
                      _selectDate(context);
                    },
                  ),
                ),



                SizedBox(
                  height: height / 28,
                ),

                Text(
                  'Select Gender',
                  style: TextStyle(
                    fontFamily: 'Constantia',
                    fontSize: 15,
                    color: const Color(0xffc3c3c3),
                  ),
                  textAlign: TextAlign.left,
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => setState(() => _value = 0),
                        child: Container(

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _value == 0 ? Color(0xff00C4B1) : Colors.transparent,
                            ),
                          height: 56,
                          width: 56,

                          child: Image(
                            image: AssetImage(
                              "assets/images/Baby-Boy.png"
                            ),
                          )
                        ),
                      ),
                      SizedBox(width: width/10),
                      GestureDetector(
                        onTap: () => setState(() => _value = 1),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _value == 1 ? Color(0xff00C4B1) : Colors.transparent,
                          ),
                          height: 56,
                          width: 56,

                          child: Image(
                            image: AssetImage(
                                "assets/images/Baby-Girl.png"
                            ),
                          )
                        ),
                      ),
                    ],
                  ),
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
                      'Save',
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
