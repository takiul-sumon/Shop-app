import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final int price;
  final String image;
  final Color color;
  const ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(20),
      margin:const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 5),
          Center(
            child: Image(
              height: 100,
              image: AssetImage(image),
            ),
          )
        ],
      ),
    );
  }
}
