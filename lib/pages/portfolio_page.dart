import 'package:flutter/material.dart';

import '../constants/contact_links.dart';
import '../layout/breakpoints.dart';
import '../utils/launch_external.dart';
import '../widgets/dialogs/contact_methods_dialog.dart';
import '../widgets/navigation/portfolio_app_bar.dart';
import '../widgets/sections/about_section.dart';
import '../widgets/sections/experience_section.dart';
import '../widgets/sections/hero_section.dart';
import '../widgets/sections/portfolio_footer.dart';
import '../widgets/sections/projects_section.dart';
import '../widgets/sections/skills_section.dart';
import '../widgets/sections/stats_section.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final _workKey = GlobalKey();
  final _skillsKey = GlobalKey();
  final _experienceKey = GlobalKey();
  final _aboutKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    final ctx = key.currentContext;
    if (ctx == null) {
      return;
    }

    Scrollable.ensureVisible(
      ctx,
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeOutCubic,
      alignment: 0.08,
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final mobile = isMobileWidth(width);
    final tablet = isTabletWidth(width);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          PortfolioAppBar.preferredHeight(context, isMobile: mobile),
        ),
        child: PortfolioAppBar(
          isMobile: mobile,
          onWorkTap: () => _scrollTo(_workKey),
          onSkillsTap: () => _scrollTo(_skillsKey),
          onExperienceTap: () => _scrollTo(_experienceKey),
          onAboutTap: () => _scrollTo(_aboutKey),
          onHireMeTap: () => showContactMethodsDialog(context),
        ),
      ),
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroSection(
                isMobile: mobile,
                isTablet: tablet,
                onPrimaryTap: () => _scrollTo(_workKey),
                onSecondaryTap: () =>
                    launchExternalUri(context, ContactLinks.linkedIn),
                onWhatsAppTap: () =>
                    launchExternalUri(context, ContactLinks.whatsApp),
              ),
              StatsSection(isMobile: mobile),
              ProjectsSection(
                key: _workKey,
                isMobile: mobile,
                isTablet: tablet,
              ),
              SkillsSection(
                key: _skillsKey,
                isMobile: mobile,
                isTablet: tablet,
              ),
              ExperienceSection(key: _experienceKey, isMobile: mobile),
              AboutSection(
                key: _aboutKey,
                isMobile: mobile,
                isTablet: tablet,
                onEmailTap: () =>
                    launchExternalUri(context, ContactLinks.mailto),
                onLinkedInTap: () =>
                    launchExternalUri(context, ContactLinks.linkedIn),
                onPhoneTap: () =>
                    launchExternalUri(context, ContactLinks.whatsApp),
              ),
              const PortfolioFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
