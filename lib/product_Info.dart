import 'package:flutter/material.dart';

class Product_Info extends StatefulWidget {
  final String title;
  final String price;
  final String image;
  final String size;
  Product_Info(
      {super.key,
      required this.title,
      required this.price,
      required this.image,
      required this.size});

  @override
  State<Product_Info> createState() => _Product_InfoState();
}

class _Product_InfoState extends State<Product_Info> {
  final List<String> Shoe_size =<String> ['9', '10', '11', '12'];
  String ? selected_size;

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
                '${widget.title}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Spacer(),
              Image(image: AssetImage(widget.image)),
              const Spacer(
                flex: 2,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(20), right: Radius.circular(20)),
                  color: Colors.black12,
                ),
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    Text('\$${widget.price}',
                        style: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w800)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount: Shoe_size.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final shoe_Size = Shoe_size[index];
                                return Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected_size == shoe_Size;
                                      });
                                    },
                                    child: Chip(
                                      backgroundColor:
                                          selected_size == shoe_Size
                                              ? Theme.of(context)
                                                  .colorScheme
                                                  .primary
                                              : const Color.fromRGBO(
                                                  245, 247, 249, 1),
                                      side: const BorderSide(
                                          color: Colors.amberAccent),
                                      label: Text(
                                        shoe_Size,
                                        style: selected_size == shoe_Size
                                            ? const TextStyle(
                                                color: Colors.white)
                                            : const TextStyle(
                                                fontWeight: FontWeight.w700),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 5),
                                    ),
                                  ),
                                );
                              })),
                    ),

                    //  Chip(label: Text(size)),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart_rounded),
                                Text('Add To Cart',
                                    style:
                                        Theme.of(context).textTheme.titleSmall)
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
