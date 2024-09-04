import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController search_product = TextEditingController();
  final List<String> filters = <String>['All', 'Adidas', 'Nike', 'Bata', 'Bay'];
  String? selected_Item;

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
                                left: Radius.circular(30))),
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                itemCount: filters.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final filter = filters[index];
                  return Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected_Item = filter;
                        print(selected_Item);
                        });
                      },
                      child: Chip(
                        backgroundColor:selected_Item==filter? Theme.of(context).colorScheme.primary: Color.fromRGBO(245, 247, 249, 1),
                          label: Text(filter),
                          padding:
                          const    EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                              
                         ),
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
