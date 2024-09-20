import 'package:flutter/material.dart';
import 'package:menu_app/data/static_data.dart';
import 'package:menu_app/utils/app_default.dart';
import 'package:menu_app/view/widgets/cart_container.dart';
import 'package:menu_app/view/widgets/collapsible_heading.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDefault.backgroundColor,
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          const CollapsibleHeading(name: 'Current Orders'),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Row(
              children: [
                Expanded(
                    child: CartContainer(
                  foodItem: foodItemList[1],
                )),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const CollapsibleHeading(name: 'Previous Orders'),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Row(
              children: [
                Expanded(
                    child: CartContainer(
                  foodItem: foodItemList[3],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
