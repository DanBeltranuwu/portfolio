import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';
import '../common/contact_link.dart';
import '../common/info_card.dart';
import '../layout/section_shell.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    required this.isMobile,
    required this.isTablet,
    required this.onEmailTap,
    required this.onLinkedInTap,
    required this.onPhoneTap,
    super.key,
  });

  final bool isMobile;
  final bool isTablet;
  final VoidCallback onEmailTap;
  final VoidCallback onLinkedInTap;
  final VoidCallback onPhoneTap;

  @override
  Widget build(BuildContext context) {
    return SectionShell(
      removeBottomBorder: true,
      child: Flex(
        direction: isMobile ? Axis.vertical : Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: isMobile ? 0 : 6,
            child: Padding(
              padding: EdgeInsets.only(
                right: isMobile ? 0 : 24,
                bottom: isMobile ? 24 : 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get in touch',
                    style: portfolioMono(
                      color: PortfolioPalette.muted,
                      size: 11,
                      weight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Let\'s build something\nuseful and beautiful',
                    style: portfolioDisplay(
                      size: isMobile
                          ? 34
                          : isTablet
                          ? 40
                          : 46,
                      weight: FontWeight.w600,
                      height: 1.05,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 560),
                    child: Text(
                      'I am open to senior Flutter and mobile engineering roles, '
                      'especially where product quality, architecture, and '
                      'cross-functional collaboration matter. I enjoy shipping '
                      'secure apps that feel native and scale cleanly.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: PortfolioPalette.muted,
                        height: 1.7,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    runSpacing: 12,
                    children: [
                      ContactLink(
                        icon: '@',
                        label: 'dmbeltranr1@gmail.com',
                        onTap: onEmailTap,
                      ),
                      ContactLink(
                        icon: 'in',
                        label: 'linkedin.com/in/daniel-beltran-r',
                        onTap: onLinkedInTap,
                      ),
                      ContactLink(
                        icon: '+57',
                        label: '+57 319 334 2940',
                        onTap: onPhoneTap,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: isMobile ? 0 : 4,
            child: Column(
              children: const [
                InfoCard(
                  title: 'Based in',
                  value: 'Bogota, Colombia',
                  body:
                      'Remote-friendly profile with experience working across '
                      'teams in Colombia, Peru, Chile, and USA.',
                  accentColor: PortfolioPalette.teal,
                ),
                SizedBox(height: 12),
                InfoCard(
                  title: 'Education & award',
                  value: '2 engineering degrees',
                  body:
                      'Computer and Systems Engineering plus Electronic '
                      'Engineering at Universidad de los Andes, and 2nd place '
                      'at Codefest Ad Astra 2022.',
                  accentColor: PortfolioPalette.blue,
                ),
                SizedBox(height: 12),
                InfoCard(
                  title: 'Languages',
                  value: 'Spanish native · English C1',
                  body:
                      'Comfortable collaborating with international product, '
                      'design, and engineering stakeholders.',
                  accentColor: PortfolioPalette.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
