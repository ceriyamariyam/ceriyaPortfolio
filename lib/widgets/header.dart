import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final VoidCallback onHomePressed;
  final VoidCallback onAboutPressed;
  final VoidCallback onExperiencePressed;
  final VoidCallback onProjectsPressed;
  final VoidCallback onContactPressed;

  const Header({
    super.key,
    required this.onHomePressed,
    required this.onAboutPressed,
    required this.onExperiencePressed,
    required this.onProjectsPressed,
    required this.onContactPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final compact = constraints.maxWidth < 760;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: onHomePressed,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.code, color: Colors.blue, size: 26),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              'Ceriya Mariyam Mathew',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: compact ? 17 : 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (compact)
                    PopupMenuButton<VoidCallback>(
                      tooltip: 'Open navigation menu',
                      onSelected: (callback) => callback(),
                      itemBuilder: (context) => [
                        _menuItem('Home', onHomePressed),
                        _menuItem('About Me', onAboutPressed),
                        _menuItem('Experience', onExperiencePressed),
                        _menuItem('Projects', onProjectsPressed),
                        _menuItem('Contact', onContactPressed),
                      ],
                    )
                  else
                    Wrap(
                      spacing: 4,
                      children: [
                        _HeaderButton(text: 'Home', onTap: onHomePressed),
                        _HeaderButton(text: 'About Me', onTap: onAboutPressed),
                        _HeaderButton(
                          text: 'Experience',
                          onTap: onExperiencePressed,
                        ),
                        _HeaderButton(
                          text: 'Projects',
                          onTap: onProjectsPressed,
                        ),
                        _HeaderButton(text: 'Contact', onTap: onContactPressed),
                      ],
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  PopupMenuItem<VoidCallback> _menuItem(String text, VoidCallback callback) {
    return PopupMenuItem(value: callback, child: Text(text));
  }
}

class _HeaderButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _HeaderButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
// // widgets/header.dart
// import 'package:flutter/material.dart';
// import 'package:portfolio/widgets/about_section.dart';

// class Header extends StatelessWidget {
//   const Header({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             blurRadius: 10,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: ConstrainedBox(
//         constraints: const BoxConstraints(maxWidth: 1200),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               'Portfolio',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue,
//               ),
//             ),
//             Row(
//               children: [
//                 _HeaderButton(text: 'Home', onTap: () {}),
//                 _HeaderButton(text: 'About', onTap: () {}),
//                 _HeaderButton(text: 'Experience', onTap: () {}),
//                 _HeaderButton(text: 'Projects', onTap: () {}),
//                 _HeaderButton(text: 'Contact', onTap: () {}),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _HeaderButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;

//   const _HeaderButton({required this.text, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: TextButton(
//         onPressed: onTap,
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.black87,
//             fontSize: 16,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
