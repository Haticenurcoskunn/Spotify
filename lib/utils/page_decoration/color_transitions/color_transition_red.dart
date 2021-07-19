import 'package:flutter/material.dart';
import 'package:spotify/utils/page_decoration/color_transitions/color_transition.dart';

BoxDecoration buildColorTransition() {
  return colortransition(
    startColor: Color(0xFFB1180E),
    endColor: Colors.black.withOpacity(0.88),
    beginAlignment: Alignment.topLeft,
    endAlignment: Alignment.bottomCenter,
  );
}
