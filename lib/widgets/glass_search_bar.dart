import 'package:flutter/material.dart';

import '../core/constants/app_radius.dart';
import '../core/constants/app_spacing.dart';
import '../core/theme/app_colors.dart';

class GlassSearchBar extends StatelessWidget {
  const GlassSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.60),
        borderRadius: BorderRadius.circular(
          AppRadius.large,
        ),
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
      child: Row(
        children: [
          const Icon(
            Icons.search_rounded,
            size: 26,
            color: AppColors.textSecondary,
          ),

          const SizedBox(width: AppSpacing.md),

          const Expanded(
            child: Text(
              "Search products, brands...",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textSecondary,
              ),
            ),
          ),

          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(AppRadius.medium),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.05),
                  blurRadius: 10,
                ),
              ],
            ),
            child: const Icon(
              Icons.qr_code_scanner_rounded,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}