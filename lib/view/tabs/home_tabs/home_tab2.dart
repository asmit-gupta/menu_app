import 'package:flutter/material.dart';
import 'package:menu_app/data/static_data.dart';
import 'package:menu_app/utils/app_default.dart';
import 'package:menu_app/view/widgets/bottom_bar.dart';
import 'package:menu_app/view/widgets/buttons/add_button.dart';
import 'package:menu_app/view/widgets/buttons/cart_button.dart';
import 'package:menu_app/view/widgets/buttons/center_menu_button.dart';
import 'package:menu_app/view/widgets/collapsible_heading.dart';
import 'package:menu_app/view/widgets/buttons/place_order_button.dart';
import 'package:menu_app/view/widgets/home_menu_card.dart';
import 'package:menu_app/view/widgets/navbar_item.dart';
import 'package:menu_app/view/widgets/product_card.dart';

class HomeTab2 extends StatefulWidget {
  const HomeTab2({super.key});

  @override
  State<HomeTab2> createState() => _HomeTab2State();
}

class _HomeTab2State extends State<HomeTab2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDefault.backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CenterMenuButton(),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const PlaceOrderButton(),
          const SizedBox(
            height: 50,
          ),
          const AddButton(),
          const SizedBox(
            height: 50,
          ),
          const CartButton(),
          const SizedBox(
            height: 50,
          ),
          const CollapsibleHeading(name: 'Action'),
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
          const SizedBox(
            height: 10,
          ),
          ProductCard(
            foodItem: foodItemList[5],
          ),
        ],
      ),
    );
  }
}
