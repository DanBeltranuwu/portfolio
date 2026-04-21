import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';
import '../layout/section_shell.dart';
import '../mockups/phone_mockup.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    required this.isMobile,
    required this.isTablet,
    required this.onPrimaryTap,
    required this.onSecondaryTap,
    required this.onWhatsAppTap,
    super.key,
  });

  final bool isMobile;
  final bool isTablet;
  final VoidCallback onPrimaryTap;
  final VoidCallback onSecondaryTap;
  final VoidCallback onWhatsAppTap;

  @override
  Widget build(BuildContext context) {
    return SectionShell(
      child: Flex(
        direction: isMobile ? Axis.vertical : Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: isMobile ? 0 : 6,
            child: Padding(
              padding: EdgeInsets.only(
                right: isMobile ? 0 : 24,
                bottom: isMobile ? 32 : 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: PortfolioPalette.badge,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: PortfolioPalette.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Senior Mobile Software Engineer',
                          style: portfolioMono(
                            color: PortfolioPalette.navy,
                            size: 11,
                            weight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 22),
                  Text(
                    'Building polished\nFlutter products for\nmodern digital teams',
                    style: portfolioDisplay(
                      size: isMobile
                          ? 40
                          : isTablet
                          ? 52
                          : 64,
                      weight: FontWeight.w400,
                      height: 1.02,
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: portfolioMono(
                        color: PortfolioPalette.muted,
                        size: 13,
                        weight: FontWeight.w600,
                        height: 1.6,
                      ),
                      children: const [
                        TextSpan(
                          text: 'Flutter',
                          style: TextStyle(color: PortfolioPalette.blue),
                        ),
                        TextSpan(text: ' · Dart · Swift · Kotlin · '),
                        TextSpan(
                          text: '5+ years',
                          style: TextStyle(color: PortfolioPalette.blue),
                        ),
                        TextSpan(text: ' in software engineering'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 560),
                    child: Text(
                      'Product-focused engineer based in Bogota, Colombia. I '
                      'specialize in scalable Flutter apps, native integrations, '
                      'and secure fintech experiences with GraphQL, Firebase, '
                      'biometrics, and thoughtful architecture.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: PortfolioPalette.muted,
                        height: 1.7,
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      FilledButton(
                        onPressed: onPrimaryTap,
                        style: FilledButton.styleFrom(
                          backgroundColor: PortfolioPalette.navy,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: Text(
                          'view my work',
                          style: portfolioMono(
                            color: Colors.white,
                            size: 12,
                            weight: FontWeight.w700,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: onSecondaryTap,
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: PortfolioPalette.borderDark,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: Text(
                          'linkedin ↗',
                          style: portfolioMono(
                            color: PortfolioPalette.text,
                            size: 12,
                            weight: FontWeight.w600,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: onWhatsAppTap,
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: PortfolioPalette.borderDark,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: Text(
                          'whatsapp ↗',
                          style: portfolioMono(
                            color: PortfolioPalette.text,
                            size: 12,
                            weight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: isMobile ? 0 : 4,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: isMobile ? 12 : 0),
                child: const PhoneMockup(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
