import 'package:flutter/material.dart';
import 'constants.dart';

class hazShowCard extends StatelessWidget {
  hazShowCard({required this.cardPhoto});
  final String cardPhoto;
  //final String p1 = cardPhoto;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Image.asset("images/$cardPhoto.png"),
          ),
        ),
      ),
    );
  }
}
