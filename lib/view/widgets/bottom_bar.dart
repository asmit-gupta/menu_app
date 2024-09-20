import 'package:flutter/material.dart';
import 'package:menu_app/utils/app_default.dart';
import 'package:menu_app/view/widgets/navbar_item.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: AppDefault.backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavbarItem(),
            NavbarItem(),
            NavbarItem(),
          ],
        ),
      ),
    );
  }
}
