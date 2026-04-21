import 'package:flutter/material.dart';

import '../../theme/typography.dart';

class TagChip extends StatelessWidget {
  const TagChip({
    required this.label,
    required this.background,
    required this.foreground,
    super.key,
  });

  final String label;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: portfolioMono(
          color: foreground,
          size: 10,
          weight: FontWeight.w700,
        ),
      ),
    );
  }
}
