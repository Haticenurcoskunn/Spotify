import 'package:flutter/material.dart';

import 'custom_icon_button.dart';

Row topButtons(IconData icon, IconData iconSecond) {
  return Row(
    children: [
      buildIconButton(
        icon,
        onPressed: () {},
      ),
      buildIconButton(iconSecond, onPressed: () {}),
    ],
  );
}
