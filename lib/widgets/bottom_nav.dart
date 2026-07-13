import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 18),
      height: 78,
      decoration: BoxDecoration(
        color: const Color(0xfff8f8f8),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(.95),
            blurRadius: 20,
            offset: const Offset(-6, -6),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 20,
            offset: const Offset(8, 8),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _Item(Icons.home_filled, "Home", true),
          _Item(Icons.search, "Search", false),
          _Item(Icons.camera_alt_outlined, "Scan", false),
          _Item(Icons.notifications_none, "Alerts", false),
          _Item(Icons.favorite_border, "Wishlist", false),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool active;

  const _Item(this.icon, this.text, this.active);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: active ? Colors.black : Colors.grey,
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: active ? FontWeight.bold : FontWeight.normal,
            color: active ? Colors.black : Colors.grey,
          ),
        ),
      ],
    );
  }
}