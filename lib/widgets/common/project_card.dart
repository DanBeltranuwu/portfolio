import 'package:flutter/material.dart';

import '../../models/portfolio_models.dart';
import '../../theme/palette.dart';
import '../../theme/typography.dart';
import 'tag_chip.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.project, super.key});

  final ProjectHighlight project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PortfolioPalette.surface,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: PortfolioPalette.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              color: project.accent,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            child: Center(
              child: Container(
                width: 80,
                height: 138,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: project.accentStrong.withValues(alpha: 0.18),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 22,
                      decoration: BoxDecoration(
                        color: project.accentStrong,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      height: 34,
                      decoration: BoxDecoration(
                        color: project.accentStrong.withValues(alpha: 0.24),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(height: 6),
                    for (final factor in [1.0, 0.7, 0.86])
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: FractionallySizedBox(
                          widthFactor: factor,
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 5,
                            decoration: BoxDecoration(
                              color: project.accentStrong.withValues(
                                alpha: 0.18,
                              ),
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final tag in project.tags)
                      TagChip(
                        label: tag,
                        background: project.accent,
                        foreground: project.accentStrong,
                      ),
                  ],
                ),
                const SizedBox(height: 14),
                Text(
                  project.company,
                  style: portfolioMono(
                    color: PortfolioPalette.muted,
                    size: 11,
                    weight: FontWeight.w700,
                    letterSpacing: 1.1,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  project.title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: PortfolioPalette.text,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  project.description,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: PortfolioPalette.muted,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
