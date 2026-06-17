import 'package:flutter/material.dart';
import '../../data/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard ({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(12),

    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(20),
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Expanded(
          child: Center(
            child: Icon(
              Icons.shopping_bag,
              size: 60,
            ),
          ),
        ),

        Text(
          product.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          product.brand,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),

        const SizedBox(height: 8),

        Text(
          '\$${product.price}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}
}
