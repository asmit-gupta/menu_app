// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

enum FOODTYPE { VEG, NONVEG, EGG }

class FoodItem {
  String name;
  String price;
  String imagePath;
  String id;
  String category;
  FOODTYPE foodtype;
  FoodItem({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.id,
    required this.category,
    required this.foodtype,
  });

  FoodItem copyWith({
    String? name,
    String? price,
    String? imagePath,
    String? id,
    String? category,
    FOODTYPE? foodtype,
  }) {
    return FoodItem(
      name: name ?? this.name,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
      id: id ?? this.id,
      category: category ?? this.category,
      foodtype: foodtype ?? this.foodtype,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'imagePath': imagePath,
      'id': id,
      'category': category,
      'foodtype': foodtype.index,
    };
  }

  factory FoodItem.fromMap(Map<String, dynamic> map) {
    return FoodItem(
      name: map['name'] as String,
      price: map['price'] as String,
      imagePath: map['imagePath'] as String,
      id: map['id'] as String,
      category: map['category'] as String,
      foodtype: FOODTYPE.values[map['foodtype'] as int],
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodItem.fromJson(String source) =>
      FoodItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FoodItem(name: $name, price: $price, imagePath: $imagePath, id: $id, category: $category, foodtype: $foodtype)';
  }

  @override
  bool operator ==(covariant FoodItem other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.price == price &&
        other.imagePath == imagePath &&
        other.id == id &&
        other.category == category &&
        other.foodtype == foodtype;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        price.hashCode ^
        imagePath.hashCode ^
        id.hashCode ^
        category.hashCode ^
        foodtype.hashCode;
  }
}
