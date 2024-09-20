import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class CircularContainer extends StatelessWidget {
  final IconData icon;
  const CircularContainer({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        color: Color(0xFFF1F1F1),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 5,
            color: Color(0xE5DEDEDE),
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
            color: Color(0x33DEDEDE),
            inset: true,
          ),
          BoxShadow(
            offset: Offset(-2, 2),
            blurRadius: 4,
            color: Color(0x33DEDEDE),
            inset: true,
          ),
        ],
      ),
      child: Center(
        child: Icon(
          icon,
          color: const Color(0xFF3CBCB4),
          size: 14,
        ),
      ),
    );
  }
}
