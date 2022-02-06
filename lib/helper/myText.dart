// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText({this.text, this.myColors, this.myFontSize, this.myFontWeight});

  String? text;
  int? myColors;
  FontWeight? myFontWeight;
  double? myFontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontWeight: myFontWeight!,
        fontSize: myFontSize!,
        color: Color(myColors!),
      ),
    );
  }
}
