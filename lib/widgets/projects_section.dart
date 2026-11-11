// widgets/projects_section.dart
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
              'Projects',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),

        const SizedBox(height: 32),
        _ProjectItem(
          title:
              'Field Inspection & Facility Audit System (Admin & Technician Portals)',
          technologies: const [
            'Flutter',
            'Dart',
            'REST APIs',
            'Dynamic Form Generation',
            'SQLite Local Sync',
          ],
          description:
              'Dual-portal platform with equipment logging, conditional audit checklists, and instant dynamic reporting.',
        ),
        const SizedBox(height: 24),
        _ProjectItem(
          title: 'Technician & Client Service Management Suite',
          technologies: const [
            'Flutter',
            'Dart',
            'Firebase FCM',
            'Real-time Job Tracking',
          ],
          description:
              'Real-time service booking, field technician execution workflow, and automated dual-platform status notifications.',
        ),
        const SizedBox(height: 24),
        _ProjectItem(
          title: 'PlanIt (Smart Task Manager)',
          technologies: const [
            'Flutter',
            'Dart',
            'SQLite (sqflite)',
            'Method Channels (Kotlin/Swift)',
            'GitHub Actions CI/CD',
          ],
          description:
              'Precision scheduling, native haptic feedback and battery bridges, and automated testing workflows.',
        ),
        const SizedBox(height: 24),
        _ProjectItem(
          title: 'Corporate Employee Management & POS Billing App',
          technologies: const [
            'Flutter',
            'ESC/POS packages',
            'REST APIs',
            'Bluetooth Printing',
          ],
          description:
              'Employee attendance logging paired with POS billing and thermal receipt generation.',
        ),
        const SizedBox(height: 24),
        _ProjectItem(
          title: 'KidsBuddy Smiley',
          technologies: const ['Flutter', 'Gamified UI', 'Firebase Analytics'],
          description:
              'A gamified learning app with engaging daily activities and Firebase Analytics insights into children\'s skills and strengths.',
        ),
      ],
    );
  }
}

class _ProjectItem extends StatelessWidget {
  final String title;
  final List<String> technologies;
  final String description;

  const _ProjectItem({
    required this.title,
    required this.technologies,
    required this.description,
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
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: technologies
                .map(
                  (technology) => Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width - 72,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      technology,
                      softWrap: true,
                      style: const TextStyle(fontSize: 13, color: Colors.blue),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
