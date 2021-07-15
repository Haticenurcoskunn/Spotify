import 'package:flutter/material.dart';

Material buildSubTitle(String subTitle, double fontSize) {
  return Material(
    type: MaterialType.transparency,
    child: Text(
      subTitle,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: fontSize),
    ),
  );
}
