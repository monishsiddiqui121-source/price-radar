import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/constants/app_radius.dart';

class AppLogo extends StatelessWidget {
  final double size;

  const AppLogo({
    super.key,
    this.size = 68,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.60),
        borderRadius: BorderRadius.circular(AppRadius.large),
        border: Border.all(
          color: Colors.white.withOpacity(.85),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(.9),
            blurRadius: 24,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(.06),
            blurRadius: 18,
            offset: const Offset(6, 6),
          ),
        ],
      ),
      child: Center(
        child: Text(
          "PR",
          style: TextStyle(
            fontSize: size * .40,
            fontWeight: FontWeight.w800,
            color: AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}