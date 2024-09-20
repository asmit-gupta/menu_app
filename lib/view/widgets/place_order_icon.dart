import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class PlaceOrderIcon extends StatelessWidget {
  const PlaceOrderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF459EAF), Color(0xFF007991)],
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 5,
            color: Color(0xE51C6F80),
            inset: true,
          ),
          BoxShadow(
            offset: Offset(-2, -2),
            blurRadius: 4,
            color: Color(0xE52AA7C0),
            inset: true,
          ),
          BoxShadow(
            offset: Offset(2, -2),
            blurRadius: 4,
            color: Color(0x331C6F80),
            inset: true,
          ),
          BoxShadow(
            offset: Offset(-2, 2),
            blurRadius: 4,
            color: Color(0x331C6F80),
            inset: true,
          ),
        ],
      ),
      child: const Center(
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
