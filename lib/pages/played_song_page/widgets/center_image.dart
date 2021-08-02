import 'package:flutter/material.dart';

Align buildCenterImage() {
  return Align(
    alignment: Alignment.center,
    child: ClipRect(
      child: Container(
        child: Align(
          alignment: Alignment.center,
          widthFactor: 0.9,
          heightFactor: 0.9,
          child: Image.network(
              'https://i.pinimg.com/originals/ac/1a/31/ac1a3107dd70b4b119a50103d1130447.jpg'),
        ),
      ),
    ),
  );
}
