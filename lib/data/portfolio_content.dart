import '../models/portfolio_models.dart';
import '../theme/palette.dart';

/// Static copy and structured lists used across portfolio sections.
abstract final class PortfolioContent {
  static const stats = [
    StatEntry(value: '5+', label: 'years in software'),
    StatEntry(value: '4+', label: 'years specializing in Flutter'),
    StatEntry(value: '3', label: 'fintech and product teams'),
    StatEntry(value: '2', label: 'engineering degrees'),
  ];

  static const projects = [
    ProjectHighlight(
      company: 'Akaunt',
      title: 'Security-first fintech experiences',
      description:
          'Architected Flutter features with Swift/Kotlin method channels, '
          'RASP, biometrics, and stable GraphQL transaction flows.',
      tags: ['Flutter', 'GraphQL', 'Biometrics'],
      accent: PortfolioPalette.blueSoft,
      accentStrong: PortfolioPalette.blue,
    ),
    ProjectHighlight(
      company: 'Tyba',
      title: 'Investment products for LatAm markets',
      description:
          'Helped migrate complex web flows into reactive mobile products '
          'using Riverpod, testing, and mobile-first UX thinking.',
      tags: ['Flutter', 'Riverpod', 'Testing'],
      accent: PortfolioPalette.tealSoft,
      accentStrong: PortfolioPalette.teal,
    ),
    ProjectHighlight(
      company: 'Tecnoevolucion',
      title: 'Client apps shipped end to end',
      description:
          'Delivered Flutter products such as Puff Cleaning and '
          'SubastasApp, integrating Firebase and REST APIs at release pace.',
      tags: ['Flutter', 'Firebase', 'REST'],
      accent: PortfolioPalette.coralSoft,
      accentStrong: PortfolioPalette.coral,
    ),
  ];

  static const skillGroups = [
    SkillGroup(
      title: 'Mobile core',
      skills: [
        SkillEntry('Flutter', PortfolioPalette.blue, true),
        SkillEntry('Dart', PortfolioPalette.blue, true),
        SkillEntry('Swift', PortfolioPalette.mutedChip, false),
        SkillEntry('Kotlin', PortfolioPalette.mutedChip, false),
        SkillEntry('Method Channels', PortfolioPalette.mutedChip, false),
      ],
    ),
    SkillGroup(
      title: 'Architecture & state',
      skills: [
        SkillEntry('BLoC', PortfolioPalette.blue, true),
        SkillEntry('Riverpod', PortfolioPalette.blue, true),
        SkillEntry('Provider', PortfolioPalette.mutedChip, false),
        SkillEntry('Git workflow', PortfolioPalette.mutedChip, false),
        SkillEntry('CI/CD', PortfolioPalette.mutedChip, false),
      ],
    ),
    SkillGroup(
      title: 'Backend & cloud',
      skills: [
        SkillEntry('REST APIs', PortfolioPalette.teal, true),
        SkillEntry('GraphQL', PortfolioPalette.teal, true),
        SkillEntry('Firebase', PortfolioPalette.teal, false),
        SkillEntry('AWS', PortfolioPalette.teal, false),
        SkillEntry('SQL', PortfolioPalette.teal, false),
      ],
    ),
    SkillGroup(
      title: 'Communication',
      skills: [
        SkillEntry('English C1', PortfolioPalette.purple, false),
        SkillEntry('Spanish native', PortfolioPalette.purple, false),
        SkillEntry('Mentoring', PortfolioPalette.purple, false),
        SkillEntry('Product collaboration', PortfolioPalette.purple, false),
      ],
    ),
  ];

  static const experience = [
    ExperienceEntry(
      period: 'Jul 2024 - Present',
      role: 'Mobile Software Engineer',
      company: 'Akaunt · Remote',
      highlights: [
        'Native integrations with Swift and Kotlin',
        'RASP and biometric security layers',
        'GraphQL transactional flows and store releases',
        'Third-party integrations and SDKs',
      ],
    ),
    ExperienceEntry(
      period: 'Mar 2024 - Sep 2024',
      role: 'Senior Mobile Apps Analyst (Flutter)',
      company: 'Tecnoevolucion · Remote',
      highlights: [
        'Architecture decisions for multiple client apps',
        'Sprint and Git workflow support for international teams',
        'Firebase and REST integrations focused on scalability',
      ],
    ),
    ExperienceEntry(
      period: 'Jan 2022 - Jul 2023',
      role: 'Frontend Engineer (Flutter)',
      company: 'Tyba · Remote',
      highlights: [
        'Migrated complex web product flows into Flutter',
        'Introduced unit and widget testing practices',
        'Mentored teammates on Dart and mobile-first design',
      ],
    ),
  ];
}
