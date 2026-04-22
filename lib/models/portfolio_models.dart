import 'package:flutter/material.dart';

class StatEntry {
  const StatEntry({required this.value, required this.label});

  final String value;
  final String label;
}

class ProjectHighlight {
  const ProjectHighlight({
    required this.company,
    required this.title,
    required this.description,
    required this.tags,
    required this.accent,
    required this.accentStrong,
    required this.externalUrl,
    required this.linkLabel,
  });

  final String company;
  final String title;
  final String description;
  final List<String> tags;
  final Color accent;
  final Color accentStrong;

  /// HTTPS URL for the related product or company site.
  final String externalUrl;

  /// Short label shown on the card link (keep short for layout).
  final String linkLabel;
}

class SkillGroup {
  const SkillGroup({required this.title, required this.skills});

  final String title;
  final List<SkillEntry> skills;
}

class SkillEntry {
  const SkillEntry(this.label, this.color, this.featured);

  final String label;
  final Color color;
  final bool featured;
}

class ExperienceEntry {
  const ExperienceEntry({
    required this.period,
    required this.role,
    required this.company,
    required this.highlights,
  });

  final String period;
  final String role;
  final String company;
  final List<String> highlights;
}
