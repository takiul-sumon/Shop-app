import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cart_provider.dart';



class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
     final cart = context.watch<CartProvider>().cart;
    // print(Provider.of<CartProvider>(context).cart);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, int index) {
            final cart_Item = cart[index];
            return ListTile(
              leading: CircleAvatar(
                  maxRadius: 20,
                  child: Image.asset(cart_Item['image'].toString())),
              title: Center(
                  child: Text(
                cart_Item['title'].toString(),
                style: Theme.of(context).textTheme.titleMedium,
              )),
              subtitle: Center(child: Text(cart_Item['size'].toString())),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            );
          },
        ),
      ),
    );
  }
}
