import 'package:flutter/material.dart';
import 'package:shop_app/Product_list.dart';
import 'package:shop_app/cart.dart';
import 'package:shop_app/product_Info.dart';
import 'package:shop_app/product_card.dart';
import './products.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int current_Index = 0;

  // naviagte_page(int index,context) {
  //   Widget selectPage;
  //   switch (index) {
  //     case 0:
  //       selectPage = homepage();
  //       break;

  //     case 1:
  //       selectPage = Cart();
  //     default:
  //       selectPage = homepage();
  //   }
  //   Navigator.of(context).push( MaterialPageRoute(builder: (context) {
  //     return selectPage;
  //   }));
  // }
  List<Widget> tran = [
    homepage(),
    Cart()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:current_Index==0 ? Product_list() : Cart(),
        bottomNavigationBar: BottomNavigationBar(
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
              // naviagte_page(value,context);
            }));
  }
}
