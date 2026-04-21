import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';

class PortfolioFooter extends StatelessWidget {
  const PortfolioFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: PortfolioPalette.border, width: 1),
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: Text(
              '© 2026 Daniel Beltran\nBuilt with Flutter and crafted with care',
              style: portfolioMono(color: PortfolioPalette.muted, size: 12),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
