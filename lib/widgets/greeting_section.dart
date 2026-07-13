import 'package:flutter/material.dart';
import '../core/theme/app_text_styles.dart';

class GreetingSection extends StatelessWidget {
  final String name;

  const GreetingSection({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Evening,",
          style: AppTextStyles.heading,
        ),
        const SizedBox(height: 6),
        Text(
          "$name 👋",
          style: AppTextStyles.heading,
        ),
        const SizedBox(height: 14),
        const Text(
          "Find the best deals from all your favorite stores.",
          style: AppTextStyles.subtitle,
        ),
      ],
    );
  }
}