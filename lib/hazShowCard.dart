import 'package:flutter/material.dart';
import 'constants.dart';

class hazShowCard extends StatelessWidget {
  hazShowCard({required this.cardPhoto});
  final String cardPhoto;
  //final String p1 = cardPhoto;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
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
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFFFFFFFF),
          child: Image.asset("images/$cardPhoto.png"),
        ),
      ),
    );
  }
}
