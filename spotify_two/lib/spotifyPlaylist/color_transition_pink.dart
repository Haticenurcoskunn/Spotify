import 'package:flutter/material.dart';
import 'package:spotify/my_general_widget.dart/color_transition.dart';


BoxDecoration buildColorTransition() {
  return colortransition(
    startColor: Color(0xFFA56CB6),
    endColor: Colors.black.withOpacity(0.88),
    beginAlignment: Alignment.topCenter,
    endAlignment: Alignment.bottomCenter,
  );
}
