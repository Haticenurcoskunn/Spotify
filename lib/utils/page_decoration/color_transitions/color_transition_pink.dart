import 'package:flutter/material.dart';
import 'package:spotify/utils/page_decoration/color_transitions/color_transition.dart';

BoxDecoration buildColorTransitionPink() {
  return colortransition(
    startColor: Color(0xFFA56CB6),
    endColor: Colors.black.withOpacity(0.88),
    beginAlignment: Alignment.topCenter,
    endAlignment: Alignment.bottomCenter,
  );
}
