import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/app_body.dart';
import 'package:shop_app/cart_provider.dart';

void main() {
  runApp( shop_app());
}

class shop_app extends StatelessWidget {
   shop_app({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (context) => CartProvider())],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Pelita',
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(254, 206, 1, 1),
            ),
            // primaryColor: const Color.fromARGB(255, 255, 255, 255),
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
        home: homepage()
      ),
    );
  }
}
