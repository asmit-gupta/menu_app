import 'dart:math';
import 'package:menu_app/model/food_item.dart';

List<String> _foodNames = [
  'Chocolate Bowl',
  'Sunset Acai Bowl',
  'Fried Rice',
  'Grilled Cheese Sandwich',
  'Veggie Pizza Slice',
  'Spicy Tofu Wrap',
  'Classic Burger',
  'Caesar Salad',
  'Avocado Toast',
  'Blueberry Pancakes',
];

List<String> _categories = [
  'Dessert',
  'Main Course',
  'Snack',
  'Breakfast',
];

List<String> _imagePaths = [
  'assets/food_image1.jpg',
  'assets/food_image2.jpg',
  'assets/food_image3.jpg',
  'assets/food_image4.jpg',
];

final random = Random();
List<FoodItem> foodItemList = List.generate(15, (index) {
  final name = _foodNames[index % _foodNames.length];
  final price = (100 + random.nextInt(300)).toString();
  final imagePath = _imagePaths[index % _imagePaths.length];
  final id = 'id_$index';
  final category = _categories[random.nextInt(_categories.length)];
  final foodtype = FOODTYPE.values[random.nextInt(FOODTYPE.values.length)];

  return FoodItem(
    name: name,
    price: price,
    imagePath: imagePath,
    id: id,
    category: category,
    foodtype: foodtype,
  );
});
