import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hazListCard.dart';
import 'hazShowCard.dart';
import 'constants.dart';
import 'hazardBody.dart';
import 'popUpHazard.dart';
import 'reuseCard.dart';

class homeHazard extends StatefulWidget {
  @override
  _homeHazardState createState() => _homeHazardState();
}

class _homeHazardState extends State<homeHazard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              //decoration:
              //height: 130,

              width: double.infinity,
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Welcome,", style: homeTitle)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: reuseCard(
                          onPress: () {
                            setState(() {
                              //print("0");
                              lan = "0";
                              cardLanColor(lan);
                            });
                          },
                          nameLan: "English",
                          colorBody: colorLanBody1,
                          colorText: colorLanText1,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: reuseCard(
                          onPress: () {
                            setState(() {
                              lan = "1";
                              cardLanColor(lan);
                            });
                          },
                          nameLan: " বাংলা  ",
                          colorBody: colorLanBody2,
                          colorText: colorLanText2,
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
          flex: 16,
          child: Container(),
        )
      ],
    );
  }
}
