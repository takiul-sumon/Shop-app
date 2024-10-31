import 'package:flutter/material.dart';
import 'package:shop_app/app_body.dart';
import 'package:shop_app/product_Info.dart';
import './products.dart';

void main() {
  runApp(const shop_app());
}

class shop_app extends StatefulWidget {
  const shop_app({super.key});

  @override
  State<shop_app> createState() => _shop_appState();
}

class _shop_appState extends State<shop_app> {
  final select_shoe = products[0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Pelita',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 206, 1, 1),
          ),
          primaryColor: const Color.fromARGB(255, 255, 255, 255),
          textTheme: const TextTheme(
            
              titleMedium: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              titleSmall:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.amber),
                  )),
      debugShowCheckedModeBanner: false,
      home: 
      
      Product_Info(
          title: select_shoe['title'].toString(),
          price: select_shoe['price'].toString(),
          image: select_shoe['image'].toString(),
          size: select_shoe['size'].toString()),
    );
  }
}
