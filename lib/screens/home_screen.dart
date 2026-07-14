import 'package:flutter/material.dart';

import '../core/theme/app_spacing.dart';
import '../widgets/appbar/premium_app_bar.dart';
import '../widgets/home/quick_action_card.dart';
import '../widgets/home/section_title.dart';
import '../widgets/search/premium_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const PremiumAppBar(
                name: "Sharukh",
              ),

              const SizedBox(height: AppSpacing.xl),

              const PremiumSearchBar(),

              const SizedBox(height: AppSpacing.xl),

              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,

                crossAxisCount: 2,

                mainAxisSpacing: 18,

                crossAxisSpacing: 18,

                childAspectRatio: 1.15,

                children: [

                  QuickActionCard(
                    icon: Icons.camera_alt_outlined,
                    title: "Scan Screenshot",
                    onTap: () {},
                  ),

                  QuickActionCard(
                    icon: Icons.link,
                    title: "Paste Link",
                    onTap: () {},
                  ),

                  QuickActionCard(
                    icon: Icons.favorite_border,
                    title: "Wishlist",
                    onTap: () {},
                  ),

                  QuickActionCard(
                    icon: Icons.notifications_none,
                    title: "Price Alerts",
                    onTap: () {},
                  ),

                ],
              ),

              const SizedBox(height: 36),

              const SectionTitle(
                title: "Trending Deals",
              ),

              const SizedBox(height: 18),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                itemCount: 4,

                itemBuilder: (context, index) {

                  return Container(

                    margin: const EdgeInsets.only(bottom: 14),

                    padding: const EdgeInsets.all(18),

                    decoration: BoxDecoration(

                      color: Colors.white,

                      borderRadius: BorderRadius.circular(20),

                    ),

                    child: Row(

                      children: [

                        Container(

                          width: 70,

                          height: 70,

                          decoration: BoxDecoration(

                            color: Colors.grey.shade200,

                            borderRadius: BorderRadius.circular(18),

                          ),

                          child: const Icon(
                            Icons.shopping_bag_outlined,
                          ),

                        ),

                        const SizedBox(width: 18),

                        const Expanded(

                          child: Column(

                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [

                              Text(
                                "Nike Air Max",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),

                              SizedBox(height: 6),

                              Text(
                                "Best Price ₹7,499",
                              ),

                            ],

                          ),

                        ),

                        ElevatedButton(

                          onPressed: () {},

                          child: const Text("View"),

                        )

                      ],

                    ),

                  );

                },

              ),

            ],

          ),

        ),

      ),

    );
  }
}