import 'package:flutter/material.dart';


class Product_Info extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const Product_Info({super.key, required this.title,required this.price,required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details",style: Theme.of(context).textTheme.titleMedium,),
      centerTitle: true,),
      body: Center(
        child: Container(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,  children: [
            Text('$title',style: Theme.of(context).textTheme.titleLarge),
            
            // Image(image: ),
          ],),
        
        ),
      ),
    );
  }
}
