import 'package:flutter/material.dart';
import 'package:menu_app/model/cart_item.dart';
import 'package:menu_app/model/order_model.dart';

class OrdersProvider with ChangeNotifier {
  final List<Order> _orders = [];

  List<Order> get orders => [..._orders];

  void addOrder(List<CartItem> cartItems, double totalAmount) {
    _orders.insert(
      0,
      Order(
        id: DateTime.now().toString(),
        items: cartItems,
        totalAmount: totalAmount,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }

  void clearOrders() {
    _orders.clear();
    notifyListeners();
  }
}
