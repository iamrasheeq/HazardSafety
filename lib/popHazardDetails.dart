import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';

class PopHazardDetails extends StatelessWidget {
  PopHazardDetails({required this.hazIndex});
  final int hazIndex;
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
            flex: 18,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Symbol:",
                                    style: conTitleDetals,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0x1D565656),
                                    ),
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x22000000),
                                        blurRadius: 6,
                                        offset: Offset(4, 6),
                                      ),
                                    ],
                                  ),
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Image.asset(hazardListPhoto[hazIndex]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Name:",
                                  //textAlign: TextAlign.start,
                                  style: conTitleDetals,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0x1D565656),
                                  ),
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x22000000),
                                      blurRadius: 0.5,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                height: double.infinity,
                                width: double.infinity,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    hazardName_en[hazIndex],
                                    //textAlign: TextAlign.start,
                                    style: conBodyDetals,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Description:",
                                  //textAlign: TextAlign.start,
                                  style: conTitleDetals,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0x1D565656),
                                  ),
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x22000000),
                                      blurRadius: 0.5,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                height: double.infinity,
                                width: double.infinity,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    hazardDetalsData[hazIndex][0],
                                    textAlign: TextAlign.center,
                                    style: conBodyDetals,
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
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Examples:",
                                  //textAlign: TextAlign.start,
                                  style: conTitleDetals,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0x1D565656),
                                  ),
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x22000000),
                                      blurRadius: 0.5,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                height: double.infinity,
                                width: double.infinity,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    hazardDetalsData[hazIndex][1],
                                    textAlign: TextAlign.center,
                                    style: conBodyDetals,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
