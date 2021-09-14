import 'package:flutter/material.dart';
import 'package:hazard_safety/constants.dart';

class titleBox extends StatelessWidget {
  titleBox({required this.logo, required this.name});
  final String logo;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x22000000)),
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x22000000),
              blurRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset("images/$logo.png"),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    style: TextStyle(
                      //color: Color(0xB00D1D24),
                      //fontFamily: 'Source Sans Pro',
                      //letterSpacing: .5,
                      color: Color(0xB20D1D24),
                      fontSize: 20,
                      //fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
