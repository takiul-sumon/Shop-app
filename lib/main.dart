import 'package:flutter/material.dart';
import './app_body.dart';

void main() {
  runApp(const shop_app());
}

class shop_app extends StatefulWidget {
  const shop_app({super.key});

  @override
  State<shop_app> createState() => _shop_appState();
}

class _shop_appState extends State<shop_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(254, 206, 1, 1),),primaryColor: const Color.fromARGB(255, 255, 255, 255)),
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
