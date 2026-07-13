import 'package:flutter/material.dart';

import '../widgets/premium_header.dart';
import '../widgets/glass_search_bar.dart';
import '../widgets/action_card.dart';
import '../widgets/deals_section.dart';
import '../widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),

      bottomNavigationBar: const BottomNav(),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(22, 18, 22, 110),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const PremiumHeader(),

              const SizedBox(height: 30),

              const GlassSearchBar(),

              const SizedBox(height: 28),

              Row(
                children: [

                  Expanded(
                    child: ActionCard(
                      icon: Icons.camera_alt_outlined,
                      title: "Scan",
                      subtitle: "Screenshot",
                      onTap: () {},
                    ),
                  ),

                  const SizedBox(width: 14),

                  Expanded(
                    child: ActionCard(
                      icon: Icons.local_offer_outlined,
                      title: "Deals",
                      subtitle: "Best Offers",
                      onTap: () {},
                    ),
                  ),

                  const SizedBox(width: 14),

                  Expanded(
                    child: ActionCard(
                      icon: Icons.trending_up,
                      title: "Tracker",
                      subtitle: "History",
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 34),

              const DealsSection(),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}