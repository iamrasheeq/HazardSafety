import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  ResultCard({required this.ResultCardColour, required this.cardChild});

  final Color ResultCardColour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: cardChild,
        margin: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: ResultCardColour,
          borderRadius: BorderRadius.circular(20.0),
        ),
      );
  }
}