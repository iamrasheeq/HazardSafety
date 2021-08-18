import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, // transparent status bar
          systemNavigationBarColor: Colors.black, // navigation bar color
          statusBarIconBrightness: Brightness.dark, // status bar icons' color
          systemNavigationBarIconBrightness:
              Brightness.dark, //navigation bar icons' color
        ),
        centerTitle: true,
        //elevation: 0,
        title: RichText(
          text: TextSpan(
            text: 'hazard',
            style: TextStyle(
              //color: Colors.black,
              color: Color(0xFF0D1D24),
              fontSize: 25,
            ),
            children: const <TextSpan>[
              TextSpan(
                  text: 'Safety',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        //backgroundColor: Color(0xFF0D1D24),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: hazardBody(),
    );
  }
}

class hazardBody extends StatefulWidget {
  const hazardBody({Key? key}) : super(key: key);

  @override
  _hazardBodyState createState() => _hazardBodyState();
}

class _hazardBodyState extends State<hazardBody> {
  void reset() {
    hazardPic01 = "images/blank.png";
    hazardPic02 = "images/blank.png";
    hazardName01 = "select a chemical hazard";
    hazardName02 = "select a chemical hazard";
    dis = "....";
    picitem01 = "images/num1.png";
    picitem02 = "images/num2.png";
    selectOne = true;
  }

  double ch_hi_li = 110;
  double ch_wi_li = 85;
  var hazardPic01 = "images/blank.png";
  var hazardPic02 = "images/blank.png";
  var hazardName01 = "select a chemical hazard";
  var hazardName02 = "select a chemical hazard";
  var dis = "3m";
  var picitem01 = "images/num1.png";
  var picitem02 = "images/num2.png";
  bool selectOne = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //decoration:
          height: 130,
          width: double.infinity,
          color: Color(0xFFFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x22000000)),
                  color: Color(0xC6FFFFFF),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 4,
                      offset: Offset(4, 6),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: 120,
                    width: 120,
                    color: Color(0xFFFFFFFF),
                    child: Image.asset("$hazardPic01"),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 120,
                width: 90,
                //color: Colors.blue[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Color(0x830D1D24),
                      size: 30.0,
                      //semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Container(
                      //good design container. eta use korbo.
                      margin: EdgeInsets.only(top: 5),
                      height: 45,
                      width: 90,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x22000000)),
                        color: Color(0xC6FFFFFF),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x22000000),
                            blurRadius: 4,
                            offset: Offset(4, 6),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "$dis",
                          style: TextStyle(
                            color: Color(0xBF0D1D24),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x22000000)),
                  color: Color(0xC6FFFFFF),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 4,
                      offset: Offset(4, 6),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: 120,
                    width: 120,
                    color: Color(0xFFFFFFFF),
                    child: Image.asset("$hazardPic02"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              height: 130,
              width: double.infinity,
              //color: Color(0x63DCE7EC),
              child: Column(
                children: [
                  Card(
                    elevation: 4,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      //side: BorderSide(color: Colors.white70, width: 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    //margin: EdgeInsets.symmetric(vertical: 2, horizontal: 50),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("$picitem01"),
                      ),
                      title: Text(
                        "$hazardName01",
                        style: TextStyle(
                          //   //  fontFamily: 'Source Sans Pro',
                          color: Color(0xCE0D1D24),
                          //fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      //side: BorderSide(color: Colors.white70, width: 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    //margin: EdgeInsets.symmetric(vertical: 2, horizontal: 50),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("$picitem02"),
                      ),
                      title: Text(
                        "$hazardName02",
                        style: TextStyle(
                          //  fontFamily: 'Source Sans Pro',
                          color: Color(0xCE0D1D24),
                          //fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            height: 400,
            width: double.infinity,
            //color: Color(0xFFF0F0F0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0x22000000)),
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0x22000000),
                  blurRadius: 4,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            if (selectOne) {
                              hazardPic01 = "images/fg_r.png";
                              selectOne = false;
                            } else {
                              hazardPic02 = "images/tg_r.png";
                            }
                          });

                          print("1");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0x22000000)),
                            color: Color(0xDDFFFFFF),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x22000000),
                                blurRadius: 4,
                                offset: Offset(4, 4),
                              ),
                            ],
                          ),
                          child: Container(
                            //padding: EdgeInsets.all(2),
                            height: ch_hi_li,
                            width: ch_wi_li,
                            child: Image.asset('images/fg_r.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("v");
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            padding: EdgeInsets.all(3),
                            height: ch_hi_li,
                            width: ch_wi_li,
                            color: Colors.white,
                            child: Image.asset('images/nt_r.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("v");
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            padding: EdgeInsets.all(3),
                            height: ch_hi_li,
                            width: ch_wi_li,
                            color: Colors.white,
                            child: Image.asset('images/tg_r.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("v");
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            padding: EdgeInsets.all(3),
                            height: ch_hi_li,
                            width: ch_wi_li,
                            color: Colors.white,
                            child: Image.asset('images/fg_r.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       ElevatedButton(
        //         onPressed: () {
        //           setState(() {
        //             reset();
        //           });
        //         },
        //         child: Icon(Icons.settings_backup_restore, color: Colors.white),
        //         style: ElevatedButton.styleFrom(
        //           shape: CircleBorder(),
        //           padding: EdgeInsets.all(10),
        //           primary: Colors.red[700], // <-- Button color
        //           onPrimary: Colors.redAccent, // <-- Splash color
        //         ),
        //       ),
        //       ElevatedButton(
        //         onPressed: () {
        //           setState(() {
        //             reset();
        //           });
        //         },
        //         child: Icon(Icons.arrow_forward, color: Colors.white),
        //         style: ElevatedButton.styleFrom(
        //           shape: CircleBorder(),
        //           padding: EdgeInsets.all(10),
        //           primary: Colors.green, // <-- Button color
        //           onPrimary: Colors.greenAccent, // <-- Splash color
        //         ),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
