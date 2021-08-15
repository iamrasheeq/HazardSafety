import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            text: 'hazard',
            style: TextStyle(
              fontSize: 25,
            ),
            children: const <TextSpan>[
              TextSpan(
                  text: 'Safety',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
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
          height: 130,
          width: double.infinity,
          color: Colors.white70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  height: 110,
                  width: 110,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 110,
                width: 50,
                color: Colors.blue[100],
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blue[300],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  height: 110,
                  width: 110,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 130,
          width: double.infinity,
          color: Colors.white70,
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 50),
                child: ListTile(
                  leading: Icon(
                    Icons.filter_1,
                    size: 20,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "chemical hazard 01",
                    style: TextStyle(
                      //   //  fontFamily: 'Source Sans Pro',
                      color: Colors.teal[900],
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 7, horizontal: 50),
                child: ListTile(
                  leading: Icon(
                    Icons.filter_2,
                    size: 20,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "chemical hazard 02",
                    style: TextStyle(
                      //  fontFamily: 'Source Sans Pro',
                      color: Colors.teal[900],
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          width: double.infinity,
          color: Colors.white70,
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          height: ch_hi_li,
                          width: ch_wi_li,
                          color: Colors.white,
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
      ],
    );
  }
}
