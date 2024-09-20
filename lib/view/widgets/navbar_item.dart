import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NavbarItem extends StatefulWidget {
  const NavbarItem({super.key});

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool _isElevated = false;

  @override
  Widget build(BuildContext context) {
    bool isPressed = _isElevated;

    Offset distance = isPressed ? const Offset(2, 2) : const Offset(5, 5);
    double blur = isPressed ? 5.0 : 13.0;

    return GestureDetector(
      onTap: () {
        setState(() {
          _isElevated = !_isElevated;
        });
      },
      child: AnimatedContainer(
        curve: Curves.linear,
        duration: const Duration(milliseconds: 200),
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: const Color(0xFFF1F1F1),
          borderRadius: const BorderRadius.all(Radius.circular(
            10,
          )),
          boxShadow: [
            if (isPressed)
              const BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 5,
                color: Color(0xE5D4D4D4),
                inset: true,
              ),
            if (isPressed)
              const BoxShadow(
                offset: Offset(-2, -2),
                blurRadius: 4,
                color: Color(0xE5FFFFFF),
                inset: true,
              ),
            if (isPressed)
              const BoxShadow(
                offset: Offset(2, -2),
                blurRadius: 4,
                color: Color(0x33D4D4D4),
                inset: true,
              ),
            if (isPressed)
              const BoxShadow(
                offset: Offset(-2, 2),
                blurRadius: 4,
                color: Color(0x33D4D4D4),
                inset: true,
              ),
            if (!isPressed)
              // Regular shadow state
              const BoxShadow(
                offset: Offset(5, 5),
                blurRadius: 13,
                color: Color(0xE5DEDEDE),
              ),
            if (!isPressed)
              const BoxShadow(
                offset: Offset(-5, -5),
                blurRadius: 10,
                color: Color(0xE5FFFFFF),
              ),
            if (!isPressed)
              const BoxShadow(
                offset: Offset(5, -5),
                blurRadius: 10,
                color: Color(0x33DEDEDE),
              ),
            if (!isPressed)
              const BoxShadow(
                offset: Offset(-5, 5),
                blurRadius: 10,
                color: Color(0x33DEDEDE),
              ),
          ],
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(Icons.home, size: 15),
          ),
        ),
      ),
    );
  }
}
