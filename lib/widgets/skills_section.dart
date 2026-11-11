// widgets/skills_section.dart
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

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
              'Skills',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),

        const SizedBox(height: 32),
        const SizedBox(height: 24),
        const _SkillGroup(
          title: 'Languages',
          skills: ['Dart', 'Kotlin', 'Swift', 'SQL'],
        ),
        const _SkillGroup(
          title: 'Framework & Core',
          skills: [
            'Flutter (Android, iOS & Web)',
            'Method Channels',
            'Deep Linking',
            'FCM',
            'ESC/POS Bluetooth Thermal Printing',
          ],
        ),
        const _SkillGroup(
          title: 'Architecture & State',
          skills: [
            'Clean Architecture',
            'MVVM',
            'Repository Pattern',
            'BLoC',
            'Riverpod',
            'Provider',
          ],
        ),
        const _SkillGroup(
          title: 'Data & Cloud',
          skills: [
            'REST APIs',
            'Dynamic JSON',
            'SQLite (sqflite)',
            'Hive',
            'Firebase (Auth, Firestore, FCM, Crashlytics, Analytics)',
          ],
        ),
        const _SkillGroup(
          title: 'CI/CD & DevOps',
          skills: [
            'GitHub Actions',
            'Git',
            'Google Play Console',
            'App Store Connect',
          ],
        ),
      ],
    );
  }
}

class _SkillGroup extends StatelessWidget {
  final String title;
  final List<String> skills;

  const _SkillGroup({required this.title, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills
                .map(
                  (skill) => Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width - 72,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue.shade100),
                    ),
                    child: Text(
                      skill,
                      softWrap: true,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
