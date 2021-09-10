import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hazardBody.dart';
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
          statusBarColor: Colors.black, // transparent status bar
          //systemNavigationBarColor: Colors.white, // navigation bar color
          statusBarIconBrightness: Brightness.light, // status bar icons' color
          systemNavigationBarIconBrightness:
              Brightness.light, //navigation bar icons' color
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
<<<<<<< HEAD
=======

class hazardBody extends StatefulWidget {
  const hazardBody({Key? key}) : super(key: key);

  @override
  _hazardBodyState createState() => _hazardBodyState();
}

class _hazardBodyState extends State<hazardBody> {
  double ch_hi_li = 110;
  //double ch_wi_li = 85;
  var hazardPic01 = "blank";
  var hazardPic02 = "blank";
  var hazardName01 = "select a chemical hazard";
  var hazardName02 = "select a chemical hazard";
  var dis = "";
  var picitem01 = "num1";
  var picitem02 = "num2";
  bool selectOne = true;
  void reset() {
    hazardPic01 = "blank";
    hazardPic02 = "blank";
    hazardName01 = "select a chemical hazard";
    hazardName02 = "select a chemical hazard";
    dis = "";
    picitem01 = "num1";
    picitem02 = "num2";
    selectOne = true;
  }

  var hazardName_en = [
    "Flammable Gas",
    "Non Toxic Non Flammable Gas",
    "Toxic Gas",
    "Oxidising Gas",
    "Flammable Liquids",
    "Flammable Solid",
    "Spontaneously Combustible",
    "Dangerous When Wet",
    "Oxidizing Agent",
    "Organic Peroxide",
    "Toxic Substances",
    "Corrosive"
  ];
  var hazardData = [
    [
      "OK",
      "OK",
      "3m",
      "3m",
      "5m",
      "5m",
      "5m",
      "5m",
      "3m",
      "Isolate",
      "3m",
      "5m"
    ],
    [
      "OK",
      "OK",
      "OK",
      "OK",
      "5m",
      "5m",
      "5m",
      "5m",
      "3m",
      "Isolate",
      "3m",
      "5m"
    ],
    [
      "3m",
      "OK",
      "N/A",
      "3m",
      "5m",
      "5m",
      "5m",
      "5m",
      "3m",
      "Isolate",
      "3m",
      "5m"
    ],
    [
      "3m",
      "OK",
      "3m",
      "OK",
      "5m",
      "5m",
      "5m",
      "5m",
      "3m",
      "Isolate",
      "3m",
      "5m"
    ],
    [
      "5m",
      "5m",
      "5m",
      "5m",
      "OK",
      "3m",
      "5m",
      "5m",
      "5m",
      "Isolate",
      "5m",
      "3m"
    ],
    [
      "5m",
      "5m",
      "5m",
      "5m",
      "3m",
      "OK",
      "3m",
      "5m",
      "3m",
      "Isolate",
      "3m",
      "N/A"
    ],
    [
      "5m",
      "5m",
      "5m",
      "5m",
      "5m",
      "3m",
      "OK",
      "5m",
      "5m",
      "Isolate",
      "3m",
      "3m"
    ],
    [
      "5m",
      "5m",
      "5m",
      "5m",
      "5m",
      "5m",
      "5m",
      "OK",
      "5m",
      "Isolate",
      "3m",
      "5m"
    ],
    [
      "3m",
      "3m",
      "5m",
      "5m",
      "5m",
      "Apart",
      "5m",
      "5m",
      "N/A",
      "Isolate",
      "3m",
      "3m"
    ],
    [
      "Isolate",
      "Isolate",
      "Isolate",
      "Isolate",
      "Isolate",
      "Isolate",
      "Isolate",
      "Isolate",
      "Isolate",
      "OK",
      "Isolate",
      "3m"
    ],
    [
      "3m",
      "3m",
      "3m",
      "3m",
      "5m",
      "3m",
      "3m",
      "3m",
      "3m",
      "Isolate",
      "Ok",
      "5m"
    ],
    ["5m", "5m", "5m", "5m", "3m", "N/A", "3m", "5m", "3m", "3m", "5m", "N/A"],
  ];
  var hazardPhoto = [
    "fg",
    "nt",
    "tg",
    "og",
    "fl",
    "fs",
    "sc",
    "dw",
    "oa",
    "op",
    "ts",
    "co"
  ];
  int indexOne(String nam) {
    int i;
    for (i = 0; i < hazardName_en.length; i++) {
      if (nam == hazardName_en[i]) {
        break;
      } else {
        continue;
      }
    }
    return i;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            //decoration:
            //height: 130,

            width: double.infinity,
            color: Color(0xFFFFFFFF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0x22000000)),
                    color: Color(0xFFFFFFFF),
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
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        color: Color(0xFFFFFFFF),
                        child: Image.asset("images/$hazardPic01.png"),
                      ),
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
                          //color: Colors.green,
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
                    color: Color(0xFFFFFFFF),
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
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        color: Color(0xFFFFFFFF),
                        child: Image.asset("images/$hazardPic02.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                //height: 130,
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
                          backgroundImage: AssetImage("images/$picitem01.png"),
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
                          backgroundImage: AssetImage("images/$picitem02.png"),
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
        ),
        Expanded(
          flex: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              //height: 400,
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
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[0];
                                  hazardPic01 = hazardPhoto[0];
                                  picitem01 = hazardPhoto[0];
                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[0];
                                  hazardPic02 = hazardPhoto[0];
                                  hazardName02 = hazardName_en[0];

                                  dis = hazardData[indexOne(hazardName01)][0];
                                }
                              });

                              print("0");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/fg.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[1];
                                  hazardPic01 = hazardPhoto[1];
                                  picitem01 = hazardPhoto[1];
                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[1];
                                  hazardPic02 = hazardPhoto[1];
                                  hazardName02 = hazardName_en[1];
                                  dis = hazardData[indexOne(hazardName01)][1];
                                }
                              });

                              print("1");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/nt.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[2];
                                  hazardPic01 = hazardPhoto[2];
                                  picitem01 = hazardPhoto[2];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[2];
                                  hazardPic02 = hazardPhoto[2];
                                  hazardName02 = hazardName_en[2];
                                  dis = hazardData[indexOne(hazardName01)][2];
                                }
                              });

                              print("2");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/tg.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[3];
                                  hazardPic01 = hazardPhoto[3];
                                  picitem01 = hazardPhoto[3];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[3];
                                  hazardPic02 = hazardPhoto[3];
                                  hazardName02 = hazardName_en[3];
                                  dis = hazardData[indexOne(hazardName01)][3];
                                }
                              });

                              print("3");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/og.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[4];
                                  hazardPic01 = hazardPhoto[4];
                                  picitem01 = hazardPhoto[4];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[4];
                                  hazardPic02 = hazardPhoto[4];
                                  hazardName02 = hazardName_en[4];
                                  dis = hazardData[indexOne(hazardName01)][4];
                                }
                              });

                              print("4");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/fl.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[5];
                                  hazardPic01 = hazardPhoto[5];
                                  picitem01 = hazardPhoto[5];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[5];
                                  hazardPic02 = hazardPhoto[5];
                                  hazardName02 = hazardName_en[5];
                                  dis = hazardData[indexOne(hazardName01)][5];
                                }
                              });

                              print("5");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/fs.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[6];
                                  hazardPic01 = hazardPhoto[6];
                                  picitem01 = hazardPhoto[6];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[6];
                                  hazardPic02 = hazardPhoto[6];
                                  hazardName02 = hazardName_en[6];
                                  dis = hazardData[indexOne(hazardName01)][6];
                                }
                              });

                              print("6");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/sc.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[7];
                                  hazardPic01 = hazardPhoto[7];
                                  picitem01 = hazardPhoto[7];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[7];
                                  hazardPic02 = hazardPhoto[7];
                                  hazardName02 = hazardName_en[7];
                                  // var i1 = indexOne(hazardName01);
                                  // var i2 = indexOne(hazardName02);
                                  // print("$i1 , $i2");
                                  dis = hazardData[indexOne(hazardName01)][7];
                                }
                              });

                              print("7");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/dw.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[8];
                                  hazardPic01 = hazardPhoto[8];
                                  picitem01 = hazardPhoto[8];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[8];
                                  hazardPic02 = hazardPhoto[8];
                                  hazardName02 = hazardName_en[8];
                                  dis = hazardData[indexOne(hazardName01)][8];
                                }
                              });

                              print("8");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/oa.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[9];
                                  hazardPic01 = hazardPhoto[9];
                                  picitem01 = hazardPhoto[9];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[9];
                                  hazardPic02 = hazardPhoto[9];
                                  hazardName02 = hazardName_en[9];
                                  dis = hazardData[indexOne(hazardName01)][9];
                                }
                              });

                              print("9");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/op.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[10];
                                  hazardPic01 = hazardPhoto[10];
                                  picitem01 = hazardPhoto[10];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[10];
                                  hazardPic02 = hazardPhoto[10];
                                  hazardName02 = hazardName_en[10];
                                  dis = hazardData[indexOne(hazardName01)][10];
                                }
                              });

                              print("10");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/ts.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (selectOne) {
                                  hazardName01 = hazardName_en[11];
                                  hazardPic01 = hazardPhoto[11];
                                  picitem01 = hazardPhoto[11];

                                  selectOne = false;
                                } else {
                                  picitem02 = hazardPhoto[11];
                                  hazardPic02 = hazardPhoto[11];
                                  hazardName02 = hazardName_en[11];
                                  dis = hazardData[indexOne(hazardName01)][11];
                                }
                              });

                              print("11");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x22000000)),
                                color: Color(0xDDFFFFFF),
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
                                padding: EdgeInsets.all(1),
                                //height: ch_hi_li,
                                //width: ch_wi_li,
                                child: Image.asset('images/co.png'),
                              ),
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
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    reset();
                  });
                },
                child: Icon(Icons.settings_backup_restore,
                    color: Color(0x830D1D24)),
                style: ElevatedButton.styleFrom(
                  //shadowColor: Colors.black,
                  shape: CircleBorder(),
                  //padding: EdgeInsets.all(10),
                  primary: Colors.white, // <-- Button color
                  onPrimary: Colors.red[700], // <-- Splash color
                ),
              ),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ElevatedButton(
              //       onPressed: () {
              //         setState(() {
              //           reset();
              //         });
              //       },
              //       child: Icon(Icons.settings_backup_restore,
              //           color: Colors.white),
              //       style: ElevatedButton.styleFrom(
              //         shape: CircleBorder(),
              //         padding: EdgeInsets.all(10),
              //         primary: Colors.red[700], // <-- Button color
              //         onPrimary: Colors.redAccent, // <-- Splash color
              //       ),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {
              //         setState(() {
              //           reset();
              //         });
              //       },
              //       child: Icon(Icons.arrow_forward, color: Colors.white),
              //       style: ElevatedButton.styleFrom(
              //         shape: CircleBorder(),
              //         padding: EdgeInsets.all(10),
              //         primary: Colors.green, // <-- Button color
              //         onPrimary: Colors.greenAccent, // <-- Splash color
              //       ),
              //     ),
              //   ],
              // ),
            ),
          ),
        ),
      ],
    );
  }
}
>>>>>>> 088142d980733ab405cd052bfcfacc2860b0cc58
