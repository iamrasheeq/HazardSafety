import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hazListCard.dart';
import 'hazShowCard.dart';
import 'constants.dart';
import 'popUpHazard.dart';

class hazardBody extends StatefulWidget {
  @override
  _hazardBodyState createState() => _hazardBodyState();
}

class _hazardBodyState extends State<hazardBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            text: 'hazard',
            style: TextStyle(
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
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  hazShowCard(
                    cardPhoto: hazardPic01,
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
// Container(
//   //good design container. eta use korbo.
//   margin: EdgeInsets.only(top: 5),
//   height: 45,
//   width: 90,
//   //color: Colors.white,
//   decoration: BoxDecoration(
//     border: Border.all(color: Color(0x22000000)),
//     color: Color(0xC6FFFFFF),
//     //color: Colors.green,
//     borderRadius: BorderRadius.circular(16),
//     boxShadow: [
//       BoxShadow(
//         color: Color(0x22000000),
//         blurRadius: 4,
//         offset: Offset(4, 6),
//       ),
//     ],
//   ),
//   child: Center(
//     child: Text(
//       "$dis",
//       style: TextStyle(
//         color: Color(0xBF0D1D24),
//         fontSize: 25,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  hazShowCard(
                    cardPhoto: hazardPic02,
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
                            backgroundImage:
                                AssetImage("images/$picitem01.png"),
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
                            backgroundImage:
                                AssetImage("images/$picitem02.png"),
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
//crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[0],
                          ),
                        ),
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[1],
                          ),
                        ),
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[2],
                          ),
                        ),
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[3],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[4],
                          ),
                        ),
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[5],
                          ),
                        ),
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[6],
                          ),
                        ),
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[7],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[8],
                          ),
                        ),
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[9],
                          ),
                        ),
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[10],
                          ),
                        ),
                        Expanded(
                          child: listCardPro(
                            onTapHaz: () {
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
                                }
                              });
// print(hazIndex);
                            },
                            hazardPic: hazardPhoto[11],
                          ),
                        ),
                      ],
                    ),
                  ],
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      heroTag: "btn1",
                      backgroundColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          reset();
                        });
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.keyboard_arrow_left,
                          color: Color(0x830D1D24)),
                    ),
                    FloatingActionButton(
                      heroTag: "btn2",
                      backgroundColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          reset();
                        });
                      },
                      child: Icon(Icons.loop, color: Color(0x830D1D24)),
                    ),
                    FloatingActionButton(
                      heroTag: "btn3",
                      backgroundColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          dis = hazardData[indexOne(hazardName01)]
                              [indexOne(hazardName02)];
                          if (dis == "3") {
                            popInsColor = Colors.amberAccent;
                            intp =
                                "You Can Place The Chemical Hazards In 3 Meters Distance";
                            unit = "meters";
                          } else if (dis == "5") {
                            intp =
                                "You Can Place The Chemical Hazards In 5 Meters Distance";
                            unit = "meters";
                            popInsColor = Colors.orangeAccent;
                          } else if (dis == "OK") {
                            intp =
                                "It Is Safe To Place The Chemical Hazards Together";
                            unit = "";
                            popInsColor = Color(0xFFB6D7A8);
                          } else if (dis == "Isolate") {
                            intp =
                                "You Can Not Place The Chemical Hazards Together";
                            unit = "";
                            popInsColor = Colors.redAccent;
                          } else if (dis == "Apart") {
                            intp =
                                "You Can Not Place The Chemical Hazards Together";
                            unit = "";
                            popInsColor = Colors.redAccent;
                          } else if (dis == "N/A") {
                            popInsColor = Colors.white;
                            intp =
                                "For These Chemical Hazards Distance Is Not Applicable";
                            unit = "";
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PopUpHazard(
                                      distance: dis,
                                      interpretation: intp,
                                      popColor: popInsColor,
                                      unitDis: unit,
                                    )),
                          );
                        });
                      },
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0x830D1D24),
                      ),
                    ),
                  ],
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
      ),
    );
  }
}
