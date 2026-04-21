import 'package:flutter/material.dart';

import '../../theme/palette.dart';

class DiamondMark extends StatelessWidget {
  const DiamondMark({required this.size, super.key});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(painter: DiamondPainter()),
    );
  }
}

class DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final outer = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 2)
      ..close();

    final dark = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width * 0.72, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..close();

    final light = Path()
      ..moveTo(0, size.height / 2)
      ..lineTo(size.width / 2, size.height * 0.28)
      ..lineTo(size.width / 2, size.height)
      ..close();

    canvas.drawPath(outer, Paint()..color = PortfolioPalette.blue);
    canvas.drawPath(dark, Paint()..color = PortfolioPalette.navy);
    canvas.drawPath(light, Paint()..color = PortfolioPalette.blueSoftStrong);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
