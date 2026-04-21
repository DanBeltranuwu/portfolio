import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'palette.dart';

ThemeData buildPortfolioTheme() {
  final baseTextTheme = ThemeData.light().textTheme;

  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: PortfolioPalette.background,
    colorScheme:
        ColorScheme.fromSeed(
          seedColor: PortfolioPalette.blue,
          brightness: Brightness.light,
        ).copyWith(
          surface: PortfolioPalette.background,
          primary: PortfolioPalette.navy,
        ),
    textTheme: GoogleFonts.interTextTheme(baseTextTheme).apply(
      bodyColor: PortfolioPalette.text,
      displayColor: PortfolioPalette.text,
    ),
  );
}
