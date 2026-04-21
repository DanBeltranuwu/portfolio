import 'package:flutter/material.dart';

import 'pages/portfolio_page.dart';
import 'theme/app_theme.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daniel Beltran | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: buildPortfolioTheme(),
      home: const PortfolioPage(),
    );
  }
}
