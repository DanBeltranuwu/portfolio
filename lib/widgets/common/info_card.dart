import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    required this.title,
    required this.value,
    required this.body,
    required this.accentColor,
    super.key,
  });

  final String title;
  final String value;
  final String body;
  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: PortfolioPalette.surfaceAlt,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: PortfolioPalette.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: accentColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: portfolioMono(
                  color: accentColor,
                  size: 12,
                  weight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          Text(
            body,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: PortfolioPalette.muted,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
