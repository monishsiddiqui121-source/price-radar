import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double radius;

  const GlassContainer({
    super.key,
    required this.child,
    this.padding,
    this.radius = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.55),
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: Colors.white.withOpacity(.85),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(.9),
            blurRadius: 24,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(.06),
            blurRadius: 18,
            offset: const Offset(6, 6),
          ),
        ],
      ),
      child: child,
    );
  }
}