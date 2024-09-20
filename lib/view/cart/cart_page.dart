import 'package:flutter/material.dart';
import 'package:menu_app/data/static_data.dart';
import 'package:menu_app/model/food_item.dart';
import 'package:menu_app/provider/cart_provider.dart';
import 'package:menu_app/provider/order_provider.dart';
import 'package:menu_app/utils/app_default.dart';
import 'package:menu_app/view/widgets/buttons/place_order_button.dart';
import 'package:menu_app/view/widgets/cart_container.dart';
import 'package:menu_app/view/widgets/collapsible_heading.dart';
import 'package:menu_app/view/widgets/home_menu_card.dart';
import 'package:menu_app/view/widgets/buttons/center_menu_button.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isExpanded1 = true;
  bool isExpanded2 = true;
  // Example lists for current orders and previous orders
  List<FoodItem> currentOrders =
      foodItemList.sublist(0, 5); // Replace with actual current orders
  List<FoodItem> previousOrders =
      foodItemList.sublist(5, 10); // Replace with actual previous orders

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDefault.backgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(height: 18),

                // Current Orders Section
                Consumer<CartProvider>(builder: (context, prov, child) {
                  return Column(
                    children: [
                      CollapsibleHeading(
                        name: 'Current Orders',
                        currentState: (bool val) => setState(() {
                          isExpanded1 = val;
                        }),
                      ),
                      isExpanded1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CartContainer(
                                foodItems: prov.items.entries
                                    .map((e) => e.value.foodItem)
                                    .toList(),
                              ),
                            )
                          : SizedBox(),
                    ],
                  );
                }),

                // Previous Orders Section
                Consumer<OrdersProvider>(builder: (context, prov, child) {
                  List<FoodItem> foodItems = [];
                  prov.orders.forEach((e) {
                    e.items.forEach((e1) {
                      foodItems.add(e1.foodItem);
                    });
                  });
                  return Column(
                    children: [
                      CollapsibleHeading(
                        currentState: (bool val) => setState(() {
                          isExpanded2 = val;
                        }),
                        name: 'Previous Orders',
                      ),
                      isExpanded2
                          ? Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CartContainer(
                                foodItems: foodItems,
                              ),
                            )
                          : SizedBox(),
                    ],
                  );
                }),
              ],
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: PlaceOrderButton())
        ],
      ),
    );
  }
}
