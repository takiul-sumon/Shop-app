import 'package:flutter/material.dart';
import 'package:shop_app/product_Info.dart';
import 'package:shop_app/product_card.dart';
import 'package:shop_app/products.dart';


class Product_list extends StatefulWidget {
  const Product_list({super.key});

  @override
  State<Product_list> createState() => _Product_listState();
}

class _Product_listState extends State<Product_list> { 
  TextEditingController search_product = TextEditingController();
  final List<String> filters = <String>['All', 'Adidas', 'Nike', 'Bata', 'Bay'];
  String? selected_Item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20) ), borderSide: BorderSide(width: 8)),
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
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected_Item = filter;
                            print(selected_Item);
                          });
                        },
                        child: Chip(
                          backgroundColor: selected_Item == filter
                              ? Theme.of(context).colorScheme.primary
                              : const Color.fromRGBO(245, 247, 249, 1),
                          side: const BorderSide(color: Colors.amberAccent),
                          label: Text(
                            filter,
                            style: selected_Item == filter
                                ? const TextStyle(color: Colors.white)
                                : const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.59,
                child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      final select_shoe = products[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return Product_Info(product: select_shoe);
                              },
                            ));
                          });
                        },
                        child: ProductCard(
                            title: select_shoe['title'].toString(),
                            price: select_shoe['price'].toString(),
                            image: select_shoe['image'].toString(),
                            color:
                                index.isEven ? Colors.lightBlue : Colors.black12),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
