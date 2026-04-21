import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';

class MiniNavChip extends StatelessWidget {
  const MiniNavChip({required this.label, required this.onTap, super.key});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: PortfolioPalette.border),
          borderRadius: BorderRadius.circular(999),
          color: PortfolioPalette.surface,
        ),
        child: Text(
          label,
          style: portfolioMono(
            color: PortfolioPalette.muted,
            size: 11,
            weight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
