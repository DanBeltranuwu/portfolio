import 'package:flutter/material.dart';

import '../../models/portfolio_models.dart';
import '../../theme/palette.dart';
import '../../theme/typography.dart';
import 'skill_chip.dart';

class SkillGroupCard extends StatelessWidget {
  const SkillGroupCard({required this.group, super.key});

  final SkillGroup group;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: PortfolioPalette.surface,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: PortfolioPalette.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            group.title,
            style: portfolioMono(
              color: PortfolioPalette.muted,
              size: 11,
              weight: FontWeight.w700,
              letterSpacing: 1.1,
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final skill in group.skills) SkillChip(skill: skill),
            ],
          ),
        ],
      ),
    );
  }
}
