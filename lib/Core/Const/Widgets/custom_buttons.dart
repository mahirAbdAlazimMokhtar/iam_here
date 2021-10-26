import 'package:flutter/material.dart';

import '../size_config.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({ this.text, this.color}) : super();
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: SizeConfig.screenWidth,
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child:  Text(text!,style: TextStyle(
            color:  color!,
            fontSize: 15,
            fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
