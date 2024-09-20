import 'dart:math';
import 'package:flutter/material.dart';
import 'package:menu_app/data/static_data.dart';
import 'package:menu_app/model/food_item.dart';
import 'package:menu_app/utils/app_default.dart';
import 'package:menu_app/view/widgets/collapsible_heading.dart';
import 'package:menu_app/view/widgets/home_menu_card.dart';
import 'package:menu_app/view/widgets/buttons/center_menu_button.dart';

class HomeTab2 extends StatefulWidget {
  const HomeTab2({super.key});

  @override
  State<HomeTab2> createState() => _HomeTab2State();
}

class _HomeTab2State extends State<HomeTab2> {
  Map<String,bool> isExpanded={};
  @override
  Widget build(BuildContext context) {
    final Map<String, List<FoodItem>> categorizedFoodItems = {};
    for (var foodItem in foodItemList) {
      if (!categorizedFoodItems.containsKey(foodItem.category)) {
        categorizedFoodItems[foodItem.category] = [];
      }
      categorizedFoodItems[foodItem.category]!.add(foodItem);
    }

    return Scaffold(
      backgroundColor: AppDefault.backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CenterMenuButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 18),
            for (var category in categorizedFoodItems.keys) ...[
              CollapsibleHeading(name: category,currentState:(bool val){
                isExpanded[category]=val;
                setState(() {
                                  
                                });
              } ),
              (isExpanded[category]??false)?ListView.builder(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categorizedFoodItems[category]!.length,
                itemBuilder: (context, index) {
                  return HomeMenuCard(
                    foodItem: categorizedFoodItems[category]![index],
                  );
                },
              ):SizedBox()
            ],
            // Commented code remains untouched
            // const PlaceOrderButton(),
            // const SizedBox(
            //   height: 50,
            // ),
            // const AddButton(),
            // const SizedBox(
            //   height: 50,
            // ),
            // const CartButton(),
            // const SizedBox(
            //   height: 50,
            // ),
            // const CollapsibleHeading(name: 'Action'),
            // const SizedBox(
            //   height: 30,
            // ),
            // HomeMenuCard(
            //   foodItem: foodItemList[0],
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // const BottomBar(),
            // const SizedBox(
            //   height: 10,
            // ),
            // ProductCard(
            //   foodItem: foodItemList[5],
            // ),
          ],
        ),
      ),
    );
  }
}
