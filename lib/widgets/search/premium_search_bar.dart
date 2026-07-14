import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_radius.dart';

class PremiumSearchBar extends StatelessWidget {
  final VoidCallback? onTap;

  const PremiumSearchBar({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppRadius.search),
      onTap: onTap,
      child: Container(
        height: 58,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppRadius.search),
          border: Border.all(
            color: AppColors.border,
          ),
        ),
        child: const Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                "Search any product...",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Icon(Icons.camera_alt_outlined),
          ],
        ),
      ),
    );
  }
}