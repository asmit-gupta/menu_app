import 'package:flutter/material.dart';
import 'package:menu_app/model/cart_item.dart';
import 'package:menu_app/model/food_item.dart';

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;
  int getQuantity(FoodItem item){
if(!items.containsKey(item.id)){
  return 0;
}
return items.values.firstWhere((e)=>e.foodItem==item).quantity;
  }

  double get totalPrice {
    return _items.values.fold(
      0,
      (sum, cartItem) =>
          sum + (double.parse(cartItem.foodItem.price) * cartItem.quantity),
    );
  }

  int get itemCount {
    return _items.values.fold(0, (sum, cartItem) => sum + cartItem.quantity);
  }

  void addItem(FoodItem foodItem) {
    if (_items.containsKey(foodItem.id)) {
      _items.update(
        foodItem.id,
        (existingCartItem) => CartItem(
          foodItem: existingCartItem.foodItem,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(foodItem.id, () => CartItem(foodItem: foodItem));
    }
    notifyListeners();
  }

  void removeItem(String id) {
    if (!_items.containsKey(id)) return;

    if (_items[id]!.quantity > 1) {
      _items.update(
        id,
        (existingCartItem) => CartItem(
          foodItem: existingCartItem.foodItem,
          quantity: existingCartItem.quantity - 1,
        ),
      );
    } else {
      _items.remove(id);
    }
    notifyListeners();
  }

  void removeItemCompletely(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
