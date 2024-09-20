import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_app/model/food_item.dart';
import 'package:menu_app/utils/food_type_color.dart';
import 'package:menu_app/view/widgets/buttons/add_button.dart';
import 'package:menu_app/view/widgets/food_type_icon.dart';

class HomeMenuCard extends StatefulWidget {
  final FoodItem foodItem;
  const HomeMenuCard({super.key, required this.foodItem});

  @override
  State<HomeMenuCard> createState() => _HomeMenuCardState();
}

class _HomeMenuCardState extends State<HomeMenuCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          height: 87,
          decoration: BoxDecoration(
            color: const Color(0xFFF6F6F6),
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 5,
                color: Color(0xE5DCDCDC),
                inset: true,
              ),
              BoxShadow(
                offset: Offset(-2, -2),
                blurRadius: 4,
                color: Color(0xE5FFFFFF),
                inset: true,
              ),
              BoxShadow(
                offset: Offset(2, -2),
                blurRadius: 4,
                color: Color(0x33DCDCDC),
                inset: true,
              ),
              BoxShadow(
                offset: Offset(-2, 2),
                blurRadius: 4,
                color: Color(0x33DCDCDC),
                inset: true,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 8.0, bottom: 8.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                  ),
                  width: 71,
                  height: 78,
                  child: Image.asset(
                    widget.foodItem.imagePath,
                    height: 78,
                    width: 71,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.foodItem.name, //handle text overflow //TODO
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.ubuntu(
                        color: const Color(0xFF4A5662),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FoodTypeIcon(
                          color: getFoodTypeColor(widget.foodItem.foodtype),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '₹${widget.foodItem.price}',
                          style: GoogleFonts.ubuntu(
                            color: const Color(0xFF4A5662),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: SizedBox()),
                    AddButton(), //cart button to be added //TODO
                  ],
                )
              ],
            ),
          )),
    );
  }
}
