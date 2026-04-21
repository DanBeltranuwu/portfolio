import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';

class ContactLink extends StatelessWidget {
  const ContactLink({
    required this.icon,
    required this.label,
    required this.onTap,
    super.key,
  });

  final String icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: PortfolioPalette.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: PortfolioPalette.border),
              ),
              alignment: Alignment.center,
              child: Text(
                icon,
                style: portfolioMono(
                  color: PortfolioPalette.text,
                  size: 11,
                  weight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                label,
                style: portfolioMono(
                  color: PortfolioPalette.text,
                  size: 13,
                  weight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
