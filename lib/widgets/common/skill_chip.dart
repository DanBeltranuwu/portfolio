import 'package:flutter/material.dart';

import '../../models/portfolio_models.dart';
import '../../theme/palette.dart';
import '../../theme/typography.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({required this.skill, super.key});

  final SkillEntry skill;

  @override
  Widget build(BuildContext context) {
    final background = skill.featured
        ? skill.color.withValues(alpha: 0.14)
        : PortfolioPalette.surface;
    final borderColor = skill.featured
        ? skill.color.withValues(alpha: 0.26)
        : PortfolioPalette.border;
    final textColor = skill.featured
        ? PortfolioPalette.navy
        : PortfolioPalette.text;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
              color: skill.color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            skill.label,
            style: portfolioMono(
              color: textColor,
              size: 12,
              weight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
