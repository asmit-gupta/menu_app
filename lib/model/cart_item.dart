// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:menu_app/model/food_item.dart';

class CartItem {
  final FoodItem foodItem;
  int quantity;
  CartItem({
    required this.foodItem,
    this.quantity = 1,
  });

  CartItem copyWith({
    FoodItem? foodItem,
    int? quantity,
  }) {
    return CartItem(
      foodItem: foodItem ?? this.foodItem,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'foodItem': foodItem.toMap(),
      'quantity': quantity,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      foodItem: FoodItem.fromMap(map['foodItem'] as Map<String, dynamic>),
      quantity: map['quantity'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItem.fromJson(String source) =>
      CartItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CartItem(foodItem: $foodItem, quantity: $quantity)';

  @override
  bool operator ==(covariant CartItem other) {
    if (identical(this, other)) return true;

    return other.foodItem == foodItem && other.quantity == quantity;
  }

  @override
  int get hashCode => foodItem.hashCode ^ quantity.hashCode;
}
