import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_app/model/food_item.dart';
import 'package:menu_app/provider/cart_provider.dart';
import 'package:menu_app/utils/food_type_color.dart';
import 'package:menu_app/view/widgets/buttons/add_button.dart';
import 'package:menu_app/view/widgets/buttons/cart_button.dart';
import 'package:menu_app/view/widgets/food_type_icon.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final FoodItem foodItem;

  const ProductCard({
    super.key,
    required this.foodItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, prov, child) {
      var quantity = prov.getQuantity(foodItem);

      return Container(
        width: 170,
        height: 206,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color(0xffCDCDCD).withOpacity(0.9),
              offset: const Offset(2, 2),
              blurRadius: 5,
              inset: true,
            ),
            BoxShadow(
              color: const Color(0xFFffffff).withOpacity(0.9),
              offset: const Offset(-2, -2),
              blurRadius: 4,
              inset: true,
            ),
            BoxShadow(
              color: const Color(0xffCDCDCD).withOpacity(0.2),
              offset: const Offset(2, -2),
              blurRadius: 4,
              inset: true,
            ),
            BoxShadow(
              color: const Color(0xffCDCDCD).withOpacity(0.2),
              offset: const Offset(-2, 2),
              blurRadius: 4,
              inset: true,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Image.asset(
                  foodItem.imagePath,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FoodTypeIcon(
                    squareSize: 26,
                    circleSize: 8,
                    color: getFoodTypeColor(foodItem.foodtype),
                  ),
                  Text(
                    foodItem.name,
                    style: GoogleFonts.ubuntu(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '₹${foodItem.price}',
                      textAlign: TextAlign.start,
                      maxLines: 1, //TODO
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4A5662),
                      ),
                    ),
                  ),
                  const Spacer(),
                  quantity > 0
                      ? CartButton(
                          onAdd: () {
                            prov.addItem(foodItem);
                          },
                          onRemove: () {
                            prov.removeItem(foodItem.id);
                          },
                          quantity: quantity,
                        )
                      : AddButton(
                          onTap: () {
                            prov.addItem(foodItem);
                          },
                        ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
          ],
        ),
      );
    });
  }
}
