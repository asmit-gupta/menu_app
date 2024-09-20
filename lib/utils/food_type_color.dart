import 'package:flutter/material.dart';
import 'package:menu_app/model/food_item.dart';

Color getFoodTypeColor(FOODTYPE foodtype) {
  switch (foodtype) {
    case FOODTYPE.VEG:
      return Colors.green;
    case FOODTYPE.NONVEG:
      return Colors.red;
    case FOODTYPE.EGG:
      return Colors.yellow;
    default:
      return Colors.grey;
  }
}
