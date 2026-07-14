import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text_styles.dart';

class PremiumAppBar extends StatelessWidget {
  final String name;

  const PremiumAppBar({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back 👋",
                style: AppTextStyles.subtitle,
              ),

              const SizedBox(height: AppSpacing.xs),

              Text(
                name,
                style: AppTextStyles.display,
              ),
            ],
          ),
        ),

        Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}