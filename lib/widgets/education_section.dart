// widgets/education_section.dart
import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

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
              'Education',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),

        const SizedBox(height: 32),
        _EducationItem(
          institution: 'APJ Abdul Kalam Technological University',
          degree: 'Master of Computer Applications (MCA)',
          score: 'CGPA: 8.48',
        ),
        const SizedBox(height: 24),
        _EducationItem(
          institution: 'MG University',
          degree: 'BSc Computer Science',
          score: '',
        ),
        const SizedBox(height: 32),
        const Text(
          'Certifications',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        const _CertificationItem(
          title: 'Google Play Academy Store Listing Certificate',
          detail: 'ID: 198230027',
        ),
        const SizedBox(height: 12),
        const _CertificationItem(
          title: 'Infosys Springboard Firebase Integration',
        ),
      ],
    );
  }
}

class _EducationItem extends StatelessWidget {
  final String institution;
  final String degree;
  final String score;

  const _EducationItem({
    required this.institution,
    required this.degree,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
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
            institution,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            degree,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (score.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              score,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _CertificationItem extends StatelessWidget {
  final String title;
  final String? detail;

  const _CertificationItem({required this.title, this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          if (detail != null) ...[
            const SizedBox(height: 4),
            Text(detail!, style: const TextStyle(color: Colors.black54)),
          ],
        ],
      ),
    );
  }
}
