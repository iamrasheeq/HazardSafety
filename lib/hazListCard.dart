import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class listCardPro extends StatelessWidget {
  listCardPro({
    required this.onTapHaz,
    required this.hazardPic,
    required this.cardColorList,
  });
  final Color cardColorList;
  //final Widget cardChild;
  //final int value;
  final VoidCallback onTapHaz;
  final String hazardPic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapHaz,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0x22000000)),
            color: cardColorList,
            //color: Color(0xDDFFFFFF),
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
            padding: EdgeInsets.all(2),
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('images/$hazardPic.png'),
          ),
        ),
      ),
    );
  }
}
