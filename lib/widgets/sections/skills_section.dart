import 'package:flutter/material.dart';

import '../../data/portfolio_content.dart';
import '../common/skill_group_card.dart';
import '../layout/section_header.dart';
import '../layout/section_shell.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    required this.isMobile,
    required this.isTablet,
    super.key,
  });

  final bool isMobile;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    final columns = isMobile ? 1 : 2;
    const spacing = 18.0;
    const maxWidth = 1180.0;
    final horizontalPadding = isMobile
        ? 20.0
        : isTablet
        ? 28.0
        : 40.0;
    final innerWidth = maxWidth - (horizontalPadding * 2);
    final cardWidth = (innerWidth - (spacing * (columns - 1))) / columns;

    return SectionShell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            title: 'Skills & stack',
            subtitle: 'core expertise',
          ),
          Wrap(
            spacing: spacing,
            runSpacing: spacing,
            children: [
              for (final group in PortfolioContent.skillGroups)
                SizedBox(
                  width: isMobile ? innerWidth : cardWidth,
                  child: SkillGroupCard(group: group),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
