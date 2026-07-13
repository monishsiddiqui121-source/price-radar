import 'package:flutter/material.dart';

import 'app_logo.dart';
import 'app_icon_button.dart';
import 'greeting_section.dart';

class PremiumHeader extends StatelessWidget {
  const PremiumHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [

            const AppLogo(),

            const SizedBox(width: 18),

            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Price Radar",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff222222),
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "Smart search. Best prices.",
                    style: TextStyle(
                      color: Color(0xff777777),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            AppIconButton(
              icon: Icons.notifications_none,
              onTap: () {},
            ),

            const SizedBox(width: 10),

            AppIconButton(
              icon: Icons.person_outline,
              onTap: () {},
            ),
          ],
        ),

        const SizedBox(height: 38),

        const GreetingSection(
          name: "Sharukh",
        ),
      ],
    );
  }
}