import 'package:flutter/material.dart';

import '../../data/portfolio_content.dart';
import '../common/project_card.dart';
import '../layout/section_header.dart';
import '../layout/section_shell.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    required this.isMobile,
    required this.isTablet,
    super.key,
  });

  final bool isMobile;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    final columns = isMobile
        ? 1
        : isTablet
        ? 2
        : 3;
    const spacing = 16.0;
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
            title: 'Selected work',
            subtitle: 'career highlights',
          ),
          Wrap(
            spacing: spacing,
            runSpacing: spacing,
            children: [
              for (final project in PortfolioContent.projects)
                SizedBox(
                  width: isMobile ? innerWidth : cardWidth,
                  child: ProjectCard(project: project),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
