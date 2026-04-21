import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'palette.dart';

TextStyle portfolioMono({
  Color color = PortfolioPalette.text,
  double size = 12,
  FontWeight weight = FontWeight.w500,
  double height = 1.2,
  double letterSpacing = 0,
}) {
  return GoogleFonts.spaceMono(
    color: color,
    fontSize: size,
    fontWeight: weight,
    height: height,
    letterSpacing: letterSpacing,
  );
}

TextStyle portfolioDisplay({
  required double size,
  required FontWeight weight,
  double height = 1.1,
  Color color = PortfolioPalette.text,
}) {
  return GoogleFonts.fraunces(
    color: color,
    fontSize: size,
    fontWeight: weight,
    height: height,
  );
}
