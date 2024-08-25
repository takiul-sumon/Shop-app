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
      body:  Row(
        children: [
          // Text(
          //   'Shoes \nCollection',
          //   style: TextStyle(
          //       fontFamily: 'Pelita',
          //       fontWeight: FontWeight.w600,
          //       fontSize: 30),
          // ),
          // SizedBox(
          //   height: 50,
          //   width: 300,
          // ),
          TextField(
            controller: search_product,
          )
        ],
      ),
    );
  }
}
