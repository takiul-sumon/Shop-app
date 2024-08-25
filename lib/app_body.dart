import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController search_product = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shoes \nCollection',
            style: TextStyle(
                fontFamily: 'Pelita',
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          // SizedBox(
          //   height: 50,
          //   width: 300,
          // ),
          SizedBox(
            height: 300,
            width: 100,
          ),
          SizedBox(
            width: 290,
            height: 300,
            child: TextField(
              controller: search_product,
              decoration:const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(20)))),
            ),
          )
        ],
      ),
    );
  }
}
