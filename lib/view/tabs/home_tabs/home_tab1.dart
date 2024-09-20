import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:menu_app/data/static_data.dart';
import 'package:menu_app/view/widgets/product_card.dart';
import 'package:menu_app/view/widgets/special_menu_card.dart';

class SpecialTab extends StatefulWidget {
  const SpecialTab({super.key});

  @override
  State<SpecialTab> createState() => _SpecialTabState();
}

class _SpecialTabState extends State<SpecialTab> {
  @override
  Widget build(BuildContext context) {
    var foodList = foodItemList;
    return AlignedGridView.count(
      itemCount: foodList.length,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      shrinkWrap: true,
      crossAxisCount: 2,
      itemBuilder: (context, index) => ProductCard(
        foodItem: foodList[index],
      ),
    );
  }
}
