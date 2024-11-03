import 'package:flutter/material.dart';


class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];

  void addProduct(Map<String, dynamic> Product) {
    notifyListeners();
    cart.add(Product);
  }

  void removeProduct(Map<String, dynamic> Product) {
    notifyListeners();
    cart.remove(Product);
  }
}
