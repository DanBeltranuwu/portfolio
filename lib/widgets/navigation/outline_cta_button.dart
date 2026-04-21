import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';

class OutlineCtaButton extends StatelessWidget {
  const OutlineCtaButton({
    required this.label,
    required this.onPressed,
    this.compact = false,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: PortfolioPalette.borderDark),
        padding: EdgeInsets.symmetric(
          horizontal: compact ? 14 : 16,
          vertical: compact ? 10 : 12,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
      child: Text(
        label,
        style: portfolioMono(
          color: PortfolioPalette.text,
          size: 12,
          weight: FontWeight.w700,
        ),
      ),
    );
  }
}
