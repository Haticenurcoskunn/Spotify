import 'package:flutter/material.dart';

Container buildElevatedButton(BuildContext context, String title) {
  return Container(
    color: Color(0x3D45454E),
    height: MediaQuery.of(context).size.height / 20,
    child: ElevatedButton(
      onPressed:(){},
      style: ElevatedButton.styleFrom(
        elevation: 30,
        side: BorderSide(
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        ),
        primary: Color(0x3D45454E),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
    ),
  );
}
