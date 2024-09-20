import 'package:flutter/material.dart';
import 'package:menu_app/view/widgets/buttons/plus_circular_button.dart';

class CartButton extends StatefulWidget {
  const CartButton({super.key});

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 32,
      decoration: const BoxDecoration(
        color: Color(0xFFF0F0F3),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 13,
            color: Color(0xE5DDDDE0),
          ),
          BoxShadow(
            offset: Offset(-5, -5),
            blurRadius: 10,
            color: Color(0xE5FFFFFF),
          ),
          BoxShadow(
            offset: Offset(5, -5),
            blurRadius: 10,
            color: Color(0x33DDDDE0),
          ),
          BoxShadow(
            offset: Offset(-5, 5),
            blurRadius: 10,
            color: Color(0x33DDDDE0),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          left: 4.0,
          top: 4.0,
          bottom: 4.0,
          right: 4.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularContainer(
              icon: Icons.remove,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              '1',
              style: TextStyle(
                color: Color(0xFF4A5662),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            CircularContainer(
              icon: Icons.add,
            ),
          ],
        ),
      ),
    );
  }
}
