import 'package:flutter/material.dart';


class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];

  void addProduct(Map<String, dynamic> pro, {Object? title}) {
    
    cart.add(pro);
    notifyListeners();
  }

  void removeProduct(Map<String, dynamic> pro) {
    
    cart.remove(pro);
    notifyListeners();
  }
}
