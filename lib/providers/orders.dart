import 'package:flutter/material.dart';
import 'cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<MyCartItem> products;
  final DateTime dateTime;

  OrderItem(this.id, this.amount, this.products, this.dateTime);
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get oders {
    return [..._orders];
  }

  void addOrder(List<MyCartItem> cartProducts, double total) {
    _orders.insert(
      0,
      OrderItem(
        DateTime.now().toString(),
        total,
        cartProducts,
        DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
