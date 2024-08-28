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
      body: SafeArea(
        child: Column(
          children: [
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
                Text(
                  'Shoes\nCollection',
                  style: TextStyle(
                      // fontFamily: 'Pelita',
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
                // SizedBox(
                //   height: 50,
                //   width: 300,
                // ),
                // SizedBox(
                //   height: 300,
                //   width: 100,
                // ),
                Expanded(
                  child: TextField(
                    controller: search_product,
                    decoration:const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(25))),hintText: 'Search',prefixIcon: Icon(Icons.search)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
