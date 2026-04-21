import 'package:flutter/material.dart';

import '../../theme/palette.dart';
import '../../theme/typography.dart';
import 'brand.dart';
import 'mini_nav_chip.dart';
import 'outline_cta_button.dart';

class PortfolioAppBar extends StatelessWidget {
  const PortfolioAppBar({
    required this.isMobile,
    required this.onWorkTap,
    required this.onSkillsTap,
    required this.onExperienceTap,
    required this.onAboutTap,
    required this.onHireMeTap,
    super.key,
  });

  /// Total toolbar height for [PreferredSize], including status-bar inset.
  static double preferredHeight(
    BuildContext context, {
    required bool isMobile,
  }) {
    final topInset = MediaQuery.paddingOf(context).top;
    const desktopBody = 76.0;
    const mobileBody = 132.0;
    return topInset + (isMobile ? mobileBody : desktopBody);
  }

  final bool isMobile;
  final VoidCallback onWorkTap;
  final VoidCallback onSkillsTap;
  final VoidCallback onExperienceTap;
  final VoidCallback onAboutTap;
  final VoidCallback onHireMeTap;

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.paddingOf(context).top;
    final navItems = [
      _NavAction(label: 'work', onTap: onWorkTap),
      _NavAction(label: 'skills', onTap: onSkillsTap),
      _NavAction(label: 'experience', onTap: onExperienceTap),
      _NavAction(label: 'about', onTap: onAboutTap),
    ];

    return Container(
      decoration: const BoxDecoration(
        color: PortfolioPalette.background,
        border: Border(
          bottom: BorderSide(color: PortfolioPalette.border, width: 1),
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Padding(
            padding: EdgeInsets.only(
              left: isMobile ? 20 : 32,
              right: isMobile ? 20 : 32,
              top: topInset + 14,
              bottom: 14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Brand(),
                    const Spacer(),
                    if (isMobile)
                      OutlineCtaButton(
                        label: 'hire me',
                        onPressed: onHireMeTap,
                        compact: true,
                      )
                    else
                      Wrap(
                        spacing: 10,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          for (final item in navItems)
                            TextButton(
                              onPressed: item.onTap,
                              child: Text(
                                item.label,
                                style: portfolioMono(
                                  color: PortfolioPalette.muted,
                                  weight: FontWeight.w600,
                                ),
                              ),
                            ),
                          const SizedBox(width: 8),
                          OutlineCtaButton(
                            label: 'hire me',
                            onPressed: onHireMeTap,
                          ),
                        ],
                      ),
                  ],
                ),
                if (isMobile) ...[
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (final item in navItems) ...[
                          MiniNavChip(label: item.label, onTap: item.onTap),
                          const SizedBox(width: 10),
                        ],
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavAction {
  const _NavAction({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;
}
