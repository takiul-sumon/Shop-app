import 'package:flutter/material.dart';
import 'package:shop_app/products.dart';

class Product_Info extends StatefulWidget {
  final Map<String, Object> product;
  const Product_Info({super.key, required this.product});

  @override
  State<Product_Info> createState() => _Product_InfoState();
}

class _Product_InfoState extends State<Product_Info> {
  int? selected_size=0;
  // final List<String> Shoe_size = <String>['9', '10', '11', '12'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.product['title'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Spacer(),
          Image.asset(widget.product['image'] as String),
          Spacer(
            flex: 2,
          ),
          Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  color: Color.fromRGBO(242, 241, 239, 1)),
              child: Column(
                children: [
                  Text(widget.product['price'] as String,
                      style: Theme.of(context).textTheme.titleLarge),
                  Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      itemCount: (widget.product['size'] as List<int>).length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final shoe_Size =
                            (widget.product['size'] as List<int>)[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selected_size == shoe_Size;
                                print('Hello');
                              });
                            },
                            child: Chip(
                              backgroundColor: selected_size == shoe_Size
                                  ? Theme.of(context).colorScheme.primary
                                  : const Color.fromRGBO(245, 247, 249, 1),
                              side: const BorderSide(color: Colors.amberAccent),
                              label: Text(
                                shoe_Size.toString(),
                                style: selected_size == shoe_Size
                                    ? const TextStyle(color: Colors.white)
                                    : const TextStyle(
                                        fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  InkWell(
                        onTap: () {
                          print('Hey');
                        },
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart_rounded),
                                Text('Add To Cart',
                                    style:
                                        Theme.of(context).textTheme.titleMedium)
                              ],
                            ),
                          ),
                        ),),
                  Spacer(
                    flex: 1,
                  )
                ],
              )),
        ],
      ),
    );
  }
}





