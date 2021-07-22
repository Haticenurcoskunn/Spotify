
import 'package:flutter/material.dart';
import 'package:spotify/utils/page_decoration/color_transitions/color_transition.dart';

BoxDecoration colorTransitionGrey() {
    return colortransition(
  startColor: Color(0xF3E0A5A5),
  endColor: Color(0xFF221E21),
  beginAlignment: Alignment.topLeft,
  endAlignment: Alignment.bottomCenter,
  );
  }