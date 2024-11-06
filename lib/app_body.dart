import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Product_list.dart';
import 'package:shop_app/cart.dart';
import 'package:shop_app/cart_provider.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int  current_Index=0 ;

  int current_Page = 0;
  List<Widget> tran =const [Product_list(), Cart()];

  @override
  Widget build(BuildContext context) {
    // print(Provider.of<String>(context));
     
    return Scaffold(
        body: IndexedStack(
          index: current_Index,
          children: tran,
        ),

        bottomNavigationBar: BottomNavigationBar(
            iconSize: 30,
            currentIndex: current_Index,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_travel_sharp),
                label: "Cart",
              )
            ],
            onTap: (value) {
              setState(() {
                current_Index = value;
              });
            }
            ));
  }
}
