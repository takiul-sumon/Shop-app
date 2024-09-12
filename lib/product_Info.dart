import 'package:flutter/material.dart';

class Product_Info extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  Product_Info(
      {super.key,
      required this.title,
      required this.price,
      required this.image});
  final Shoe_size = ['9', '10', '11', '12'];

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
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '$title',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 80),
              Image(image: AssetImage(image)),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(20), right: Radius.circular(20)),
                    color: Colors.amber.shade50,
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text('\$$price',
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w800)),
                      Expanded(
                        child: ListView.builder(
                          itemCount: Shoe_size.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(label: Text(Shoe_size[index])),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
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
                                mainAxisAlignment: MainAxisAlignment.center,children: [
                                Icon(Icons.shopping_cart_rounded),
                                Text('Add To Cart',style: Theme.of(context).textTheme.titleSmall  )
                              ],),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
