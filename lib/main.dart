import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homeHazard.dart';
import 'package:flutter/services.dart';
import 'package:hazard_safety/hazardList.dart';
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
  const MyApp({Key? key}) : super(key: key);

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
      body: homeHazard(),
    );
  }
}
