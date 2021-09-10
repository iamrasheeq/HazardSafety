import 'package:flutter/material.dart';
import 'constants.dart';

class listCardPro extends StatelessWidget {
  listCardPro(
      {required this.onTapHaz,
      required this.hazardPic,
      required this.hazIndex});
  //final Color cardColor;
  //final Widget cardChild;
  //final int value;
  final VoidCallback onTapHaz;
  final String hazardPic;
  int hazIndex;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTapHaz,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x22000000)),
          color: Color(0xDDFFFFFF),
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
          //height: ch_hi_li,
          //width: ch_wi_li,
          child: Image.asset('images/$hazardPic.png'),
        ),
      ),
    );
  }
}
