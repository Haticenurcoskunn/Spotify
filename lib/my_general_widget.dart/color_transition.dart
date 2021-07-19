import 'package:flutter/material.dart';

BoxDecoration colortransition({
    required Color startColor,
    required Color endColor,
    required Alignment beginAlignment,
    required Alignment endAlignment,
  }) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [startColor, endColor],
        stops: [0.0, 0.3],
        begin: beginAlignment,
        end: endAlignment,
      ),
    );
  }