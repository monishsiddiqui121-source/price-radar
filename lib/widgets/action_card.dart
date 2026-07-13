import 'package:flutter/material.dart';

import '../core/constants/app_radius.dart';
import '../core/constants/app_spacing.dart';
import '../core/theme/app_colors.dart';

class ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const ActionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppRadius.large),
      onTap: onTap,
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.60),
          borderRadius: BorderRadius.circular(AppRadius.large),
          border: Border.all(
            color: Colors.white.withOpacity(.85),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(.9),
              blurRadius: 22,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(.06),
              blurRadius: 18,
              offset: const Offset(6, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppRadius.medium),
              ),
              child: Icon(
                icon,
                color: AppColors.textPrimary,
                size: 24,
              ),
            ),

            const Spacer(),

            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),

            const SizedBox(height: AppSpacing.xs),

            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}