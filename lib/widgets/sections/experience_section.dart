import 'package:flutter/material.dart';

import '../../data/portfolio_content.dart';
import '../../theme/palette.dart';
import '../common/experience_item.dart';
import '../layout/section_header.dart';
import '../layout/section_shell.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({required this.isMobile, super.key});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final items = PortfolioContent.experience;

    return SectionShell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(title: 'Experience', subtitle: 'career timeline'),
          Container(
            decoration: BoxDecoration(
              color: PortfolioPalette.surface,
              borderRadius: BorderRadius.circular(28),
              border: Border.all(color: PortfolioPalette.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var index = 0; index < items.length; index++)
                  ExperienceItem(
                    item: items[index],
                    isMobile: isMobile,
                    showDivider: index < items.length - 1,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
