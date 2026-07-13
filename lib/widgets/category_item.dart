import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: const Color(0xfff8f8f8),
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(.95),
                blurRadius: 18,
                offset: const Offset(-6, -6),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(.08),
                blurRadius: 18,
                offset: const Offset(8, 8),
              ),
            ],
          ),
          child: Icon(
            icon,
            size: 30,
            color: const Color(0xff222222),
          ),
        ),

        const SizedBox(height: 10),

        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Color(0xff555555),
          ),
        ),
      ],
    );
  }
}