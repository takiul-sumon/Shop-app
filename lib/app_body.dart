import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController search_product = TextEditingController();
  final List<String> filters = <String>['All', 'Adidas', 'Nike', 'Bata'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Shoes\nCollection',
                  style: TextStyle(
                      // fontFamily: 'Pelita',
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
                Expanded(
                  child: TextField(
                    controller: search_product,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(25))),
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                itemCount: filters.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final filter = filters[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(filter),
                      foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      color: Colors.black45,
                      padding: EdgeInsets.all(10),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
