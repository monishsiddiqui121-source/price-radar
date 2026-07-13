import 'package:flutter/material.dart';

import 'product_card.dart';
import 'section_title.dart';

class DealsSection extends StatelessWidget {
  const DealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const SectionTitle(
          title: "Best Deals",
          action: "See All",
        ),

        const SizedBox(height: 18),

        SizedBox(
          height: 330,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,

            itemCount: 3,

            separatorBuilder: (_, __) =>
                const SizedBox(width: 18),

            itemBuilder: (_, index) {

              if (index == 0) {
                return const ProductCard(
                  image:
                      "https://m.media-amazon.com/images/I/61SUj2aKoEL._SL1500_.jpg",
                  title: "AirPods Pro 2",
                  subtitle: "Apple",
                  price: "₹21,990",
                  oldPrice: "₹26,900",
                  discount: "-18%",
                );
              }

              if (index == 1) {
                return const ProductCard(
                  image:
                      "https://m.media-amazon.com/images/I/71yzJoE7WlL._SL1500_.jpg",
                  title: "iPhone 15 Pro",
                  subtitle: "256 GB",
                  price: "₹1,24,900",
                  oldPrice: "₹1,34,900",
                  discount: "-8%",
                );
              }

              return const ProductCard(
                image:
                    "https://m.media-amazon.com/images/I/61uA2UVnYWL._SL1500_.jpg",
                title: "Galaxy Watch",
                subtitle: "Samsung",
                price: "₹19,999",
                oldPrice: "₹25,999",
                discount: "-23%",
              );
            },
          ),
        ),
      ],
    );
  }
}