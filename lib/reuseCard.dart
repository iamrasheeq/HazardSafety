import 'package:flutter/material.dart';

class reuseCard extends StatelessWidget {
  reuseCard({
    required this.onPress,
    required this.nameLan,
    required this.colorBody,
    required this.colorText,
  });
  final Color colorBody;
  final Color colorText;
  final String nameLan;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: double.infinity,
        //width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x22000000)),
          //color: Color(0xDDFFFFFF),
          color: colorBody,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                nameLan,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colorText,
                ),
              ),
            ),
            // child: Text(
            //   nameLan,
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: colorText,
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
