import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final int price;
  final String image;
  const ProductCard({super.key, required this.title, required this.price,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(216, 240, 253, 1),
      child: Column(
        children: [
          Text(price.toString()),
          SizedBox(
            height: 5,
          ),
          Text(title),
          SizedBox(height: 5),
          Image(
            height: 100,
            image: AssetImage('assets/images/3.jpeg'),
          )
        ],
      ),
    );
  }
}
