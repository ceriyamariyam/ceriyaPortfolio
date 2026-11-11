// widgets/experience_section.dart
import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(width: 4, height: 28, color: Colors.blue),
            const SizedBox(width: 12),
            const Text(
              'Experience',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),

        const SizedBox(height: 32),
        _ExperienceItem(
          company: 'Gisaxiom',
          role: 'Senior Flutter Developer',
          period: 'Dec 2023 - Present',
          highlights: const [
            'Lead enterprise cross-platform mobile suites across varied domains from architecture to App Store / Google Play release.',
            'Built Technician & Client Service Management Suite and Field Inspection & Facility Audit System (dual-portal with Admin & Technician apps).',
            'Integrated POS thermal printing (esc_pos_printer, esc_pos_utils) and native Method Channels (Kotlin/Swift).',
            'Configured GitHub Actions CI/CD pipelines, offline-first SQLite caching, and mentored junior developers.',
          ],
        ),
        const SizedBox(height: 24),
        _ExperienceItem(
          company: 'Indbytes',
          role: 'Flutter Developer',
          period: 'Mar 2021 - Nov 2023',
          highlights: const [
            'Engineered production Flutter apps with reusable UI libraries and clean BLoC/Provider state flows.',
            'Integrated multi-endpoint REST APIs, parsed dynamic JSON, and maintained Git workflows.',
          ],
        ),
        const SizedBox(height: 24),
        _ExperienceItem(
          company: 'WebSoulLabs',
          role: 'Flutter Developer',
          period: 'Sep 2020 - Mar 2021',
          highlights: const [
            'Converted Figma and wireframe designs into responsive widgets.',
            'Collaborated with backend teams on API integration and error handling.',
          ],
        ),
      ],
    );
  }
}

class _ExperienceItem extends StatelessWidget {
  final String company;
  final String role;
  final String period;
  final List<String> highlights;

  const _ExperienceItem({
    required this.company,
    required this.role,
    required this.period,
    required this.highlights,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 8,
            spacing: 16,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    company,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Text(role, style: const TextStyle(color: Colors.black87)),
                ],
              ),
              Text(
                period,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...highlights.map(
            (highlight) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('•  ', style: TextStyle(color: Colors.blue)),
                  Expanded(
                    child: Text(
                      highlight,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.55,
                        color: Colors.black54,
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
