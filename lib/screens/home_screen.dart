import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_section.dart';
import 'package:portfolio/widgets/education_section.dart';
import 'package:portfolio/widgets/experience_section.dart';
import 'package:portfolio/widgets/header.dart';
import 'package:portfolio/widgets/home_section.dart';
import 'package:portfolio/widgets/projects_section.dart';
import 'package:portfolio/widgets/skills_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _educationKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0.1, // Scroll to show section slightly below top
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final horizontalPadding = constraints.maxWidth < 600
              ? 16.0
              : constraints.maxWidth <= 1024
              ? 24.0
              : 40.0;
          final sectionSpacing = constraints.maxWidth < 600 ? 40.0 : 56.0;

          return SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Header(
                  onHomePressed: () => _scrollToSection(_homeKey),
                  onAboutPressed: () => _scrollToSection(_aboutKey),
                  onExperiencePressed: () => _scrollToSection(_experienceKey),
                  onProjectsPressed: () => _scrollToSection(_projectsKey),
                  onContactPressed: () {
                    // Scroll to the bottom for contact
                    _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                Container(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: constraints.maxWidth < 600 ? 32 : 48,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Home Section
                      KeyedSubtree(key: _homeKey, child: const HomeSection()),

                      SizedBox(height: sectionSpacing),

                      // About Me Section
                      KeyedSubtree(
                        key: _aboutKey,
                        child: const AboutMeSection(),
                      ),

                      SizedBox(height: sectionSpacing),

                      // Experience Section
                      KeyedSubtree(
                        key: _experienceKey,
                        child: const ExperienceSection(),
                      ),

                      SizedBox(height: sectionSpacing),

                      KeyedSubtree(
                        key: _educationKey,
                        child: const EducationSection(),
                      ),

                      SizedBox(height: sectionSpacing),

                      KeyedSubtree(
                        key: _skillsKey,
                        child: const SkillsSection(),
                      ),

                      SizedBox(height: sectionSpacing),

                      KeyedSubtree(
                        key: _projectsKey,
                        child: const ProjectsSection(),
                      ),

                      // Contact Section at bottom
                      SizedBox(height: sectionSpacing),
                      _buildContactSection(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildContactSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blue.shade100, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Get In Touch',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Thiruvananthapuram, Kerala, India',
            style: TextStyle(fontSize: 16, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 32,
            runSpacing: 24,
            children: [
              _buildContactItem(
                icon: Icons.email,
                title: 'Email',
                value: 'ceriyamariyam97@gmail.com',
                color: Colors.red,
              ),
              _buildContactItem(
                icon: Icons.phone,
                title: 'Phone',
                value: '+91 9745722823',
                color: Colors.green,
              ),
              _buildContactItem(
                icon: Icons.location_on,
                title: 'Location',
                value: 'Kerala, India',
                color: Colors.orange,
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            '© 2026 Ceriya Mariyam Mathew. All rights reserved.',
            style: TextStyle(fontSize: 14, color: Colors.black45),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return SizedBox(
      width: 260,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withOpacity(0.3)),
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
// // screens/home_screen.dart
// import 'package:flutter/material.dart';
// import '../../widgets/header.dart';
// import '../../widgets/about_section.dart';
// import '../../widgets/experience_section.dart';
// import '../../widgets/education_section.dart';
// import '../../widgets/skills_section.dart';
// import '../../widgets/projects_section.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const Header(),
//             Container(
//               constraints: const BoxConstraints(maxWidth: 1200),
//               padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
//               child: const Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   AboutSection(),
//                   SizedBox(height: 48),
//                   ExperienceSection(),
//                   SizedBox(height: 48),
//                   EducationSection(),
//                   SizedBox(height: 48),
//                   SkillsSection(),
//                   SizedBox(height: 48),
//                   ProjectsSection(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
