import 'package:flutter/material.dart';
import 'package:menu_app/provider/cart_provider.dart';
import 'package:menu_app/utils/app_default.dart';
import 'package:menu_app/view/widgets/navbar_item.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int index) onTap;

  const BottomBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: const BoxDecoration(
        color: AppDefault.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavbarItem(
              isSelected: selectedIndex == 0,
              imagePath: 'assets/nav_icon1.png',
              onTap: () => onTap(0),
              name: 'Dashboard',
            ),
            NavbarItem(
              isSelected: selectedIndex == 1,
              imagePath: 'assets/nav_icon2.png',
              onTap: () => onTap(1),
              name: 'Home',
            ),
            Consumer<CartProvider>(builder: (context, prov, child) {
              return Badge(
                isLabelVisible: prov.items.length > 0,
                label: Text(prov.items.length.toString()),
                child: NavbarItem(
                  isSelected: selectedIndex == 2,
                  imagePath: 'assets/nav_icon3.png',
                  onTap: () => onTap(2),
                  name: 'Cart',
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
