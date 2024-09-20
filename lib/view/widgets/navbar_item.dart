import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NavbarItem extends StatelessWidget {
  final bool isSelected;
  final String imagePath;
  final String name;
  final VoidCallback? onTap;

  const NavbarItem({
    super.key,
    required this.isSelected,
    required this.imagePath,
    this.onTap,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    // Check if the item is selected
    bool isPressed = isSelected;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        curve: Curves.linear,
        duration: const Duration(milliseconds: 200),
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: const Color(0xFFF1F1F1),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: isPressed
              ? const [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 5,
                    color: Color(0xE5D4D4D4),
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
                    color: Color(0x33D4D4D4),
                    inset: true,
                  ),
                  BoxShadow(
                    offset: Offset(-2, 2),
                    blurRadius: 4,
                    color: Color(0x33D4D4D4),
                    inset: true,
                  ),
                ]
              : const [
                  BoxShadow(
                    offset: Offset(5, 5),
                    blurRadius: 13,
                    color: Color(0xE5DEDEDE),
                  ),
                  BoxShadow(
                    offset: Offset(-5, -5),
                    blurRadius: 10,
                    color: Color(0xE5FFFFFF),
                  ),
                  BoxShadow(
                    offset: Offset(5, -5),
                    blurRadius: 10,
                    color: Color(0x33DEDEDE),
                  ),
                  BoxShadow(
                    offset: Offset(-5, 5),
                    blurRadius: 10,
                    color: Color(0x33DEDEDE),
                  ),
                ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: ImageIcon(
              AssetImage(imagePath),
              // color: ,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
