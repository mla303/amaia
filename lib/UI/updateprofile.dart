import 'package:flutter/material.dart';
import 'package:gender_selection/gender_selection.dart';
import 'navigation_bar.dart';

class updateprofile extends StatefulWidget {
  @override
  _updateprofileState createState() => _updateprofileState();
}

class _updateprofileState extends State<updateprofile> {
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff00C4B1),
          title: Text("Update Info"),
        ),
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: width / 1.1,
              //color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: height / 60),

                  Container(
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
                          'Update Pic',
                          style: TextStyle(
                            color: Color(0xff00C4B1),
                            fontSize: height / 40,
//                      fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
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
                          style: TextStyle(
                            color: Color(0xff00C4B1),
                          ),
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
                    minWidth: width / 1.1,
                    height: height / 15,
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
                            fontSize: height / 50, fontWeight: FontWeight.w500
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

                  GenderSelection(
                    maleText: "Boy",
                    femaleText: "Girl",
                    //linearGradient: pinkRedGradient,
                    selectedGenderIconBackgroundColor: Colors.indigo,
                    checkIconAlignment: Alignment.centerRight,
                    selectedGenderCheckIcon: null,
                    onChanged: (Gender gender) {
                      print(gender);
                    },
                    equallyAligned: true,
                    animationDuration: Duration(milliseconds: 400),
                    isCircular: true,
                    isSelectedGenderIconCircular: true,
                    opacityOfGradient: 0.6,
                    padding: const EdgeInsets.all(3),
                    size: 70,
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
                        'Update',
                        style: TextStyle(
                          fontSize: height / 40,
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
                  SizedBox(
                    height: height / 60,
                  ),

                  Container(
                    //color: Colors.red,
                    height: height / 4,
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          title: Text("Feedback"),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Rate Your Experince"),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Privacy"),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
