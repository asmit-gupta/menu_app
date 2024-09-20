import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_app/model/food_item.dart';
import 'package:menu_app/provider/cart_provider.dart';
import 'package:menu_app/utils/food_type_color.dart';
import 'package:menu_app/view/widgets/buttons/cart_button.dart';
import 'package:menu_app/view/widgets/food_type_icon.dart';
import 'package:menu_app/view/widgets/instructions_widget.dart';
import 'package:provider/provider.dart';

class CartContainer extends StatelessWidget {
  final List<FoodItem> foodItems;

  const CartContainer({
    super.key,
    required this.foodItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 5,
            color: Color(0x66AEAEC0),
            inset: true,
          ),
          BoxShadow(
            offset: Offset(-3, -3),
            blurRadius: 7,
            color: Colors.white,
            inset: true,
          ),
        ],
      ),
      child: Column(
        children: [
          ...foodItems.map((foodItem) => Consumer<CartProvider>(
            builder: (context,prov,child) {
              var quantity=prov.getQuantity(foodItem);
              return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FoodTypeIcon(
                          color: getFoodTypeColor(foodItem.foodtype),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              foodItem.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.ubuntu(
                                color: const Color(0xFF4A5662),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '₹${foodItem.price}',
                              style: GoogleFonts.ubuntu(
                                color: const Color(0xFF727272),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                         CartButton(quantity: quantity,onAdd: ()=>prov.addItem(foodItem),onRemove: ()=>prov.removeItem(foodItem.id),),
                      ],
                    ),
                  );
            }
          )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InstructionsWidget(),
                ],
              )),
        ],
      ),
    );
  }
}
