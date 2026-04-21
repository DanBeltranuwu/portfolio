import 'package:flutter/material.dart';

import '../../models/portfolio_models.dart';
import '../../theme/palette.dart';
import '../../theme/typography.dart';

class StatCard extends StatelessWidget {
  const StatCard({required this.data, super.key});

  final StatEntry data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: PortfolioPalette.surface,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: PortfolioPalette.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.value,
            style: portfolioDisplay(
              size: 34,
              weight: FontWeight.w600,
              color: PortfolioPalette.text,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            data.label,
            style: portfolioMono(color: PortfolioPalette.muted, size: 12),
          ),
        ],
      ),
    );
  }
}
