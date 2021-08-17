import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  double ch_hi_li = 110;
  double ch_wi_li = 85;
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
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
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
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 120,
                width: 80,
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
                      height: 45,
                      width: 80,
                      color: Colors.yellow,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x22000000)),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
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
                    color: Colors.white,
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
                      leading: Icon(
                        Icons.filter_1,
                        size: 20,
                        color: Colors.blueGrey[900],
                      ),
                      title: Text(
                        "Select Chemical Hazard 01",
                        style: TextStyle(
                          //   //  fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey[900],
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
                    //margin: EdgeInsets.symmetric(vertical: 7, horizontal: 50),
                    child: ListTile(
                      leading: Icon(
                        Icons.filter_2,
                        size: 20,
                        color: Colors.blueGrey[900],
                      ),
                      title: Text(
                        "Select Chemical Hazard 02",
                        style: TextStyle(
                          //  fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey[900],
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
            color: Color(0xFFF2F6F9),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          print("v");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Color(0xA1C1C1C)),
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x22000000),
                                blurRadius: 2,
                                //offset: Offset(4, 6),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                              padding: EdgeInsets.all(2),
                              height: ch_hi_li,
                              width: ch_wi_li,
                              color: Colors.white,
                              child: Image.asset('images/fg_r.png'),
                            ),
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
      ],
    );
  }
}
