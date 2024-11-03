import 'package:flutter/material.dart';

import './products.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
              final cart_Item = products[index];
            return ListTile(
              leading: CircleAvatar(
                  maxRadius: 20, child: Image.asset(cart_Item['image'].toString())),
              title: Center(child: Text(cart_Item['title'].toString(), style: Theme.of(context).textTheme.titleMedium,)),
              subtitle: Center(child: Text(cart_Item['size'].toString())),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            );
          },
        ),
      ),
    );
  }
}
