import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hazShowCard.dart';
import 'constants.dart';

class PopUpHazard extends StatelessWidget {
  PopUpHazard(
      {required this.distance,
      required this.interpretation,
      required this.popColor,
      required this.unitDis});
  final String distance;
  final String unitDis;
  final String interpretation;
  final Color popColor;
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
      body: Column(
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
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x22000000)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 4,
                      offset: Offset(4, 6),
                    ),
                  ],
                  color: popColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          distance,
                          style: conLabelBigText,
                        ),
                        Text(
                          unitDis,
                          style: conLabel,
                        ),
                      ],
                    ),
                    // Text(
                    //   distance,
                    //   style: DistanceTextStyle,
                    // ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: ResultTextStyle,
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
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:
                      Icon(Icons.keyboard_arrow_left, color: Color(0x830D1D24)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
