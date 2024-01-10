import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class OnboardingContentWidget extends StatelessWidget {
  final String title;
  final String desc;
  final String imagePath;

  const OnboardingContentWidget({
    super.key,
    required this.title,
    required this.desc,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: ThemeText().robotoBold,
        ),
        const SizedBox(height: 12),
        Text(
          desc,
          style: ThemeText().robotoMedium,
        ),
        const SizedBox(height: 50),
        Center(child: Image.asset(imagePath))
      ],
    );
  }
}
