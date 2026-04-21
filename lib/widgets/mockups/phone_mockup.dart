import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';
import '../navigation/diamond_mark.dart';

class PhoneMockup extends StatelessWidget {
  const PhoneMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 440,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            right: 10,
            top: 10,
            child: Opacity(opacity: 0.18, child: DiamondMark(size: 64)),
          ),
          const Positioned(
            left: -10,
            bottom: 36,
            child: Opacity(opacity: 0.16, child: DiamondMark(size: 40)),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 220,
              height: 390,
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
              decoration: BoxDecoration(
                color: PortfolioPalette.surfaceAlt,
                borderRadius: BorderRadius.circular(34),
                border: Border.all(
                  color: PortfolioPalette.borderDark,
                  width: 2,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x15000000),
                    blurRadius: 32,
                    offset: Offset(0, 20),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 8,
                    decoration: BoxDecoration(
                      color: PortfolioPalette.borderDark,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: PortfolioPalette.surface,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            MockBar(),
                            SizedBox(height: 10),
                            MockCard(
                              color: PortfolioPalette.blueSoft,
                              accent: PortfolioPalette.blue,
                              showLargeBlock: true,
                            ),
                            SizedBox(height: 8),
                            MockCard(
                              color: PortfolioPalette.tealSoft,
                              accent: PortfolioPalette.teal,
                            ),
                            SizedBox(height: 8),
                            MockCard(
                              color: PortfolioPalette.coralSoft,
                              accent: PortfolioPalette.coral,
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: MockButton(
                                    filled: true,
                                    color: PortfolioPalette.blue,
                                    label: 'Primary',
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: MockButton(
                                    filled: false,
                                    color: PortfolioPalette.blue,
                                    label: 'Secondary',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MockBar extends StatelessWidget {
  const MockBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        color: PortfolioPalette.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        'FlutterApp',
        style: portfolioMono(
          color: Colors.white,
          size: 11,
          weight: FontWeight.w700,
        ),
      ),
    );
  }
}

class MockCard extends StatelessWidget {
  const MockCard({
    required this.color,
    required this.accent,
    this.showLargeBlock = false,
    super.key,
  });

  final Color color;
  final Color accent;
  final bool showLargeBlock;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: PortfolioPalette.border),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 6,
                      decoration: BoxDecoration(
                        color: accent.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(99),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FractionallySizedBox(
                        widthFactor: 0.58,
                        child: Container(
                          height: 6,
                          decoration: BoxDecoration(
                            color: accent.withValues(alpha: 0.25),
                            borderRadius: BorderRadius.circular(99),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (showLargeBlock) ...[
            const SizedBox(height: 8),
            Container(
              height: 42,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class MockButton extends StatelessWidget {
  const MockButton({
    required this.filled,
    required this.color,
    required this.label,
    super.key,
  });

  final bool filled;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: filled ? color : color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(10),
        border: filled ? null : Border.all(color: color.withValues(alpha: 0.3)),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: portfolioMono(
          color: filled ? Colors.white : PortfolioPalette.navy,
          size: 9,
          weight: FontWeight.w700,
        ),
      ),
    );
  }
}
