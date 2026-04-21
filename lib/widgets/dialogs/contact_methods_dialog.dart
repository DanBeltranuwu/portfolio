import 'package:flutter/material.dart';

import '../../constants/contact_links.dart';
import '../../theme/palette.dart';
import '../../theme/typography.dart';
import '../../utils/launch_external.dart';

/// Prompts the user to pick email, LinkedIn, or WhatsApp, then opens the link.
Future<void> showContactMethodsDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (dialogContext) {
      return AlertDialog(
        backgroundColor: PortfolioPalette.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: PortfolioPalette.border),
        ),
        title: Text(
          'How would you like to reach me?',
          style: portfolioDisplay(size: 20, weight: FontWeight.w600),
        ),
        contentPadding: const EdgeInsets.only(top: 8, left: 24, right: 24),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Choose a channel — your browser will open the right app or site.',
                style: portfolioMono(
                  color: PortfolioPalette.muted,
                  size: 12,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),
              _ContactTile(
                icon: Icons.mail_outline,
                title: 'Email',
                subtitle: 'dmbeltranr1@gmail.com',
                onTap: () {
                  Navigator.of(dialogContext).pop();
                  launchExternalUri(context, ContactLinks.mailto);
                },
              ),
              _ContactTile(
                icon: Icons.link,
                title: 'LinkedIn',
                subtitle: 'linkedin.com/in/daniel-beltran-r',
                onTap: () {
                  Navigator.of(dialogContext).pop();
                  launchExternalUri(context, ContactLinks.linkedIn);
                },
              ),
              _ContactTile(
                icon: Icons.chat_bubble_outline,
                title: 'WhatsApp',
                subtitle: '+57 319 334 2940',
                onTap: () {
                  Navigator.of(dialogContext).pop();
                  launchExternalUri(context, ContactLinks.whatsApp);
                },
              ),
            ],
          ),
        ),
        actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(
              'Cancel',
              style: portfolioMono(
                color: PortfolioPalette.muted,
                weight: FontWeight.w600,
              ),
            ),
          ),
        ],
      );
    },
  );
}

class _ContactTile extends StatelessWidget {
  const _ContactTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: PortfolioPalette.surfaceAlt,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
              children: [
                Icon(icon, color: PortfolioPalette.navy, size: 22),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: portfolioMono(weight: FontWeight.w700, size: 13),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: portfolioMono(
                          color: PortfolioPalette.muted,
                          size: 11,
                          height: 1.35,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_outward,
                  size: 18,
                  color: PortfolioPalette.muted,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
