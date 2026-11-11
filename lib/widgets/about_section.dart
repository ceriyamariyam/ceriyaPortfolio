import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        Row(
          children: [
            Container(width: 4, height: 28, color: Colors.blue),
            const SizedBox(width: 12),
            const Text(
              'About Me',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),

        // const SizedBox(height: 8),
        // const Text(
        //   'Short intro',
        //   style: TextStyle(fontSize: 18, color: Colors.black54),
        // ),
        const SizedBox(height: 32),

        // Main Content
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: const Text(
            'Senior Flutter Developer with 6+ years of experience shipping production Android and iOS apps on Google Play and Apple App Store. Skilled in Clean Architecture, MVVM, BLoC, Riverpod, Provider, native Method Channels (Kotlin/Swift), offline-first SQLite, and GitHub Actions CI/CD.',
            style: TextStyle(fontSize: 17, height: 1.7, color: Colors.black87),
          ),
        ),

        const SizedBox(height: 24),

        // Highlights
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            // _buildHighlightChip(
            //   icon: Icons.architecture,
            //   text: 'Clean Architecture',
            // ),
            // _buildHighlightChip(
            //   icon: Icons.offline_bolt,
            //   text: 'Offline-First Design',
            // ),
            // _buildHighlightChip(
            //   icon: Icons.animation,
            //   text: 'UI Micro-interactions',
            // ),
            _buildHighlightChip(icon: Icons.smartphone, text: 'Cross-Platform'),
            _buildHighlightChip(icon: Icons.group, text: 'Team Collaboration'),
            _buildHighlightChip(icon: Icons.code, text: 'Clean Code'),
          ],
        ),
      ],
    );
  }

  Widget _buildHighlightChip({required IconData icon, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.blue, size: 18),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
// // widgets/about_section.dart
// import 'package:flutter/material.dart';

// class AboutSection extends StatelessWidget {
//   const AboutSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Flutter Developer',
//             style: TextStyle(
//               fontSize: 48,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           const SizedBox(height: 24),
//           const Text(
//             'Motivated Flutter Developer with 4 years of expertise in UI design and API integration. '
//             'Skilled in building high-performance, user-friendly applications with a strong focus '
//             'on creating seamless experiences. Seeking a challenging role to apply my skills and '
//             'contribute to innovative mobile solutions.',
//             style: TextStyle(fontSize: 18, height: 1.6, color: Colors.black54),
//           ),
//           const SizedBox(height: 32),
//           Wrap(
//             spacing: 16,
//             runSpacing: 16,
//             children: [
//               _InfoChip(title: 'Experience', value: '4+ Years'),
//               _InfoChip(title: 'Location', value: 'Available'),
//               _InfoChip(title: 'Availability', value: 'Immediate'),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _InfoChip extends StatelessWidget {
//   final String title;
//   final String value;

//   const _InfoChip({required this.title, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//       decoration: BoxDecoration(
//         color: Colors.blue.shade50,
//         borderRadius: BorderRadius.circular(25),
//         border: Border.all(color: Colors.blue.shade100),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             '$title: ',
//             style: const TextStyle(
//               fontWeight: FontWeight.w600,
//               color: Colors.blue,
//             ),
//           ),
//           Text(value, style: const TextStyle(color: Colors.black87)),
//         ],
//       ),
//     );
//   }
// }
