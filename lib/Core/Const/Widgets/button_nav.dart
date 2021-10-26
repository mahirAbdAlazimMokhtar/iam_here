import 'package:flutter/material.dart';


Widget buildButton(String title,double width , double height,Color color,double fontSize, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,//356,
      height: height,//76,
      child: Stack(children: <Widget>[
        Positioned(
            top: 0,
            left: 0,
            child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: color,
                ))),
        Positioned(
          top: 25,
          left: 40,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: const Color.fromRGBO(255, 255, 255, 1),
                fontSize: fontSize,

                letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
        ),
      ]),
    ),
  );
}