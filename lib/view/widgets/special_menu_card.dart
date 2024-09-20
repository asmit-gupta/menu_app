// import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
// import 'package:menu_app/model/food_item.dart';

// class SpecialMenuCard extends StatelessWidget {
//   final FoodItem foodItem;
//   const SpecialMenuCard({super.key, required this.foodItem});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: Color(0xFFF6F6F6),
//           boxShadow: [
//             BoxShadow(
//                 inset: true,
//                 offset: Offset(2, 2),
//                 blurRadius: 5,
//                 color: const Color(0xFFCDCDCD).withOpacity(0.9),
//                 blurStyle: BlurStyle.normal),
//             BoxShadow(
//                 inset: true,
//                 offset: Offset(-2, -2),
//                 blurRadius: 4,
//                 color: Colors.white.withOpacity(0.9),
//                 blurStyle: BlurStyle.normal),
//             BoxShadow(
//                 inset: true,
//                 offset: Offset(2, -2),
//                 blurRadius: 4,
//                 color: const Color(0xFFCDCDCD).withOpacity(0.20),
//                 blurStyle: BlurStyle.normal),
//             BoxShadow(
//                 inset: true,
//                 offset: Offset(-2, 2),
//                 blurRadius: 4,
//                 color: Colors.white.withOpacity(0.2),
//                 blurStyle: BlurStyle.normal),
//           ]),
//       child: Column(
//         children: [
//           Expanded(
//               child: ClipRRect(
//             borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
//             child: Image.asset(foodItem.imagePath, fit: BoxFit.cover),
//           )),
//           Container(
//             padding: EdgeInsets.all(8),
//             child: Column(
//               children: [
//                 Text(
//                   foodItem.name,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color(0xFF4A5662)),
//                 ),
//                 SizedBox(height: 4),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [Text(foodItem.price), Text('Add')],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:menu_app/model/food_item.dart';

class SpecialMenuCard extends StatelessWidget {
  final FoodItem foodItem;
  const SpecialMenuCard({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(255, 231, 231, 231),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 5,
            spreadRadius: -16,
            color: Color(0xCDCDCDCD), // #CDCDCDE5 in ARGB
            inset: false,
          ),
          BoxShadow(
            offset: Offset(-2, -2),
            blurRadius: 4,
            spreadRadius: -16,
            color: Color(0xE5FFFFFF),
            inset: false,
          ),
          BoxShadow(
            offset: Offset(2, -2),
            blurRadius: 4,
            spreadRadius: -16,
            color: Color(0x33CDCDCD), // #CDCDCD33 in ARGB
            inset: false,
          ),
          BoxShadow(
            offset: Offset(-2, 2),
            blurRadius: 4,
            spreadRadius: -16,
            color: Color(0x33CDCDCD), // #CDCDCD33 in ARGB
            inset: false,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(foodItem.imagePath, fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(
                  foodItem.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF4A5662)),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(foodItem.price), Text('Add')],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
