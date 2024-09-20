// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:menu_app/model/cart_item.dart';
import 'package:collection/collection.dart';

class Order {
  final String id;
  final List<CartItem> items;
  final double totalAmount;
  final DateTime dateTime;
  Order({
    required this.id,
    required this.items,
    required this.totalAmount,
    required this.dateTime,
  });

  Order copyWith({
    String? id,
    List<CartItem>? items,
    double? totalAmount,
    DateTime? dateTime,
  }) {
    return Order(
      id: id ?? this.id,
      items: items ?? this.items,
      totalAmount: totalAmount ?? this.totalAmount,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'items': items.map((x) => x.toMap()).toList(),
      'totalAmount': totalAmount,
      'dateTime': dateTime.millisecondsSinceEpoch,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'] as String,
      items: List<CartItem>.from(
        (map['items'] as List<int>).map<CartItem>(
          (x) => CartItem.fromMap(x as Map<String, dynamic>),
        ),
      ),
      totalAmount: map['totalAmount'] as double,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) =>
      Order.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Order(id: $id, items: $items, totalAmount: $totalAmount, dateTime: $dateTime)';
  }

  @override
  bool operator ==(covariant Order other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        listEquals(other.items, items) &&
        other.totalAmount == totalAmount &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        items.hashCode ^
        totalAmount.hashCode ^
        dateTime.hashCode;
  }
}
