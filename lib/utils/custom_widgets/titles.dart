import 'package:flutter/material.dart';

  Padding buildSubTitle(String subTitle, double fontSize,FontWeight fontWeight) {
  return Padding(
    padding: const EdgeInsets.only(top:8,bottom: 8,left:8),
    child: Material(
      type: MaterialType.transparency,
      child: Text(subTitle,
        style: TextStyle(
            color: Colors.white, fontWeight:fontWeight, fontSize: fontSize),
      ),
    ),
  );
}
