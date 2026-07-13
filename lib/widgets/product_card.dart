import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final String oldPrice;
  final String discount;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.oldPrice,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.60),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white.withOpacity(.85),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(.95),
            blurRadius: 24,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(.06),
            blurRadius: 18,
            offset: const Offset(6, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    discount,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),

                const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ],
            ),

            const SizedBox(height: 16),

            Expanded(
              child: Center(
                child: Image.network(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),

            const Spacer(),

            Row(
              children: [

                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),

                const SizedBox(width: 8),

                Text(
                  oldPrice,
                  style: const TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}