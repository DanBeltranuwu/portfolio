import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';
import 'diamond_mark.dart';

class Brand extends StatelessWidget {
  const Brand({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const DiamondMark(size: 20),
        const SizedBox(width: 10),
        Text(
          'dev.portfolio',
          style: portfolioMono(
            color: PortfolioPalette.text,
            size: 13,
            weight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
