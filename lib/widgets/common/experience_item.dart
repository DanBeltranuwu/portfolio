import 'package:flutter/material.dart';

import '../../models/portfolio_models.dart';
import '../../theme/palette.dart';
import '../../theme/typography.dart';
import 'tag_chip.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({
    required this.item,
    required this.isMobile,
    required this.showDivider,
    super.key,
  });

  final ExperienceEntry item;
  final bool isMobile;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    final period = Padding(
      padding: EdgeInsets.only(bottom: isMobile ? 12 : 0),
      child: SizedBox(
        width: isMobile ? null : 180,
        child: Text(
          item.period,
          style: portfolioMono(
            color: PortfolioPalette.muted,
            size: 12,
            weight: FontWeight.w600,
          ),
        ),
      ),
    );

    final details = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          item.role,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: PortfolioPalette.text,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          item.company,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: PortfolioPalette.muted),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final highlight in item.highlights)
              TagChip(
                label: highlight,
                background: PortfolioPalette.surfaceAlt,
                foreground: PortfolioPalette.muted,
              ),
          ],
        ),
      ],
    );

    final content = Padding(
      padding: const EdgeInsets.all(20),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [period, details],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                period,
                Expanded(child: details),
              ],
            ),
    );

    if (!showDivider) {
      return content;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        content,
        const Divider(height: 1, thickness: 1, color: PortfolioPalette.border),
      ],
    );
  }
}
