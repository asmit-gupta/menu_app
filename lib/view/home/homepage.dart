import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_app/utils/app_default.dart';
import 'package:menu_app/view/cart/cart_page.dart';
import 'package:menu_app/view/tabs/bottom_tabs/cart.dart';
import 'package:menu_app/view/tabs/bottom_tabs/dashboard.dart';
import 'package:menu_app/view/tabs/bottom_tabs/home.dart';
import 'package:menu_app/view/tabs/home_tabs/special_tab.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab2.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab3.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab4.dart';
import 'package:menu_app/view/widgets/bottom_bar.dart';
import 'package:menu_app/view/widgets/buttons/popped_button.dart';
import 'package:collection/collection.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late int selectedIndex;
  final List<Widget> bottomTabWidgets = const [DashBoard(), Home(), CartPage()];

  @override
  void initState() {
    super.initState();

    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppDefault.backgroundColor,
      body: IndexedStack(
        index: selectedIndex,
        children: bottomTabWidgets,
      ),
      bottomNavigationBar: BottomBar(
          selectedIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          }),
    ));
  }
}
