import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final wide = constraints.maxWidth > 1024;
        final titleSize = constraints.maxWidth < 600
            ? 36.0
            : constraints.maxWidth <= 1024
            ? 44.0
            : 54.0;
        final content = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ceriya Mariyam Mathew',
              style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                height: 1.1,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Senior Flutter Developer | Cross-Platform Mobile Engineer (6+ Years Experience)',
              style: TextStyle(
                fontSize: constraints.maxWidth < 600 ? 19 : 26,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
                height: 1.35,
              ),
            ),
            const SizedBox(height: 24),
            _buildProfileLinks(),
          ],
        );

        if (!wide) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [content, const SizedBox(height: 24), _buildInfoCard()],
          );
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: content),
            const SizedBox(width: 40),
            Expanded(child: _buildInfoCard()),
          ],
        );
      },
    );
  }

  Widget _buildProfileLinks() {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        OutlinedButton.icon(
          onPressed: () => launchUrl(
            Uri.parse('https://github.com/ceriyamariyam'),
            mode: LaunchMode.externalApplication,
          ),
          icon: const Icon(Icons.code),
          label: const Text('GitHub'),
        ),
        OutlinedButton.icon(
          onPressed: () => launchUrl(
            Uri.parse(
              'https://www.linkedin.com/in/ceriya-mariyam-mathew-88764a193',
            ),
            mode: LaunchMode.externalApplication,
          ),
          icon: const Icon(Icons.business),
          label: const Text('LinkedIn'),
        ),
      ],
    );
  }

  Widget _buildInfoCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.location_on, color: Colors.blue, size: 20),
              SizedBox(width: 8),
              Text(
                'Location',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            'Thiruvananthapuram, Kerala, India',
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Icon(Icons.work, color: Colors.blue, size: 20),
              SizedBox(width: 8),
              Text(
                'Experience',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            '6+ years',
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Icon(Icons.email, color: Colors.blue, size: 20),
              SizedBox(width: 8),
              Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            'ceriyamariyam97@gmail.com',
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Icon(Icons.phone, color: Colors.blue, size: 20),
              SizedBox(width: 8),
              Text(
                'Focus',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            'Android, iOS & Web',
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
