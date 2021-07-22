import 'package:flutter/material.dart';
import 'custom_icon_button.dart';
Row rightTopTwoButtons( IconData icon,IconData iconSecond,Function() onPressed) {
  return Row(
    children: [
      buildIconButton(
        icon,
        onPressed: (){},
      ),
      buildIconButton(iconSecond,
       onPressed: onPressed),
    ],
  );
}
