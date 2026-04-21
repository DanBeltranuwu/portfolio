import 'package:flutter/material.dart';

import '../../data/portfolio_content.dart';
import '../../layout/breakpoints.dart';
import '../common/stat_card.dart';
import '../layout/section_shell.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({required this.isMobile, super.key});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final tablet = isTabletWidth(width);
    const columns = 4;
    const spacing = 12.0;
    const maxWidth = 1180.0;
    final horizontalPadding = isMobile
        ? 20.0
        : tablet
        ? 28.0
        : 40.0;
    final innerWidth = maxWidth - (horizontalPadding * 2);
    final columnCount = isMobile ? 2 : columns;
    final cardWidth =
        (innerWidth - (spacing * (columnCount - 1))) / columnCount;

    return SectionShell(
      top: 0,
      bottom: 0,
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: [
          for (final stat in PortfolioContent.stats)
            SizedBox(
              width: cardWidth,
              child: StatCard(data: stat),
            ),
        ],
      ),
    );
  }
}
