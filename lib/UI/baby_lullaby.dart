import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:soundpool/soundpool.dart';
Soundpool _soundpool;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _soundpool = Soundpool();
}



class Sounds_Page extends StatefulWidget {
  @override
  _Sounds_PageState createState() => _Sounds_PageState();
}

class _Sounds_PageState extends State<Sounds_Page> {

  bool _pressed = true;
  double _volume = 2.0;
  int _cheeringStreamId = -1;


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00C4B1),
        centerTitle: true,
        title: Text(
          "Baby Lullaby",
          style: TextStyle(
            color: Colors.white,
            fontSize: height/36,

          ),
        ),
      ),
      body: SingleChildScrollView(

        child: Container(
          height: height/1,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ic_bg.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    //nature




                    SizedBox(height: height/20,),

                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: NatureList.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,

                        mainAxisSpacing: 20.0,
                      ),
                      itemBuilder: (BuildContext context, int index)
                      {
                        return     GestureDetector(
                          onTap: (){
                            setState(() {

                              if(_pressed = !_pressed)
                              {
                                setState(() {

                                });
                              }
                              else{
                                setState(() {

                                });
                              }

                            });
                          },
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: height/8.8,
                                width: width/4.2,
                                decoration: new BoxDecoration(
                                    color: Color(0xff00C4B1),
                                    borderRadius: new BorderRadius.all( Radius.circular(16)
                                    )
                                ),
                                child: IconButton(icon: ImageIcon(AssetImage(NatureList[index].imgUrl),
                                  color: Colors.white,size: 46,),),
                              ),
                              SizedBox(
                                height: height/110,
                              ),

                              _pressed

                                  ? new Text(NatureList[index].naturename,
                                style:

                                TextStyle(
                                    color:
//                                Selected == 'A Night at Home'
                                    Colors.white,
//                                    : Color(0xff4B4D74),

                                    fontSize: height/50,fontWeight: FontWeight.bold
                                ),)


                                  : Expanded(child:Slider.adaptive(
                                activeColor: Colors.white,
                                inactiveColor: Colors.grey,

                                min: 1.5, max: 2.0,
                                value: _volume,
                                onChanged: (newRate){
                                  setState((){_volume = newRate;});
                                  _updateCheeringRate();
                                },
                              ),)

//                                  pressed
//                                      ? TextStyle(color: Color(0xff4B4D74),fontSize: height/50,fontWeight: FontWeight.bold)
//                                      : TextStyle(color:Colors.white,fontSize: height/50,fontWeight: FontWeight.bold),)

                            ],
                          ),
                        );
                      },
                    ),





                  ],
                ),
              ),
            ],

          ),
        ),
      ),


    );


  }





  Future<void> _updateCheeringRate() async {
    if (_cheeringStreamId > 0){
      await _soundpool.setRate(streamId: _cheeringStreamId, playbackRate: _volume);
    }
  }

}









class nature{
  String naturename;
  String imgUrl;

  nature({this.naturename,this.imgUrl,});

}


















List NatureList = [

  nature(
      naturename:"Creek",
      imgUrl: "assets/nature/ic_creek.png"
  ),
  nature(
      naturename:"Forest",
      imgUrl: "assets/nature/ic_forest.png"
  ),
  nature(
      naturename:"WindlnTree",
      imgUrl: "assets/nature/ic_windintree.png"
  ),
  nature(
      naturename:"Leaves",
      imgUrl: "assets/nature/ic_leaves.png"
  ),
  nature(
      naturename:"Ocean",
      imgUrl: "assets/nature/ic_ocean.png"
  ),
  nature(
      naturename:"Lake",
      imgUrl: "assets/nature/ic_lake.png"
  ),
  nature(
      naturename:"FirePlace",
      imgUrl: "assets/nature/ic_fire.png"
  ),
  nature(
      naturename:"Night",
      imgUrl: "assets/nature/ic_night.png"
  ),
  nature(
      naturename:"Desert",
      imgUrl: "assets/nature/ic_desert.png"
  ),
  nature(
      naturename:"Wind",
      imgUrl: "assets/nature/ic_wind.png"
  ),
  nature(
      naturename:"Cave",
      imgUrl: "assets/nature/ic_cave.png"
  ),

];







