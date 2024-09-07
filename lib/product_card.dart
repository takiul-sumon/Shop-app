import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final int price;
  const ProductCard({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(216, 240, 253, 1),
      child: Column(
        children: [
Text(price.toString()),
Text(title)
        ],
      ),
    );
  }
}
