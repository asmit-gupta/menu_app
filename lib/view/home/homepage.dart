import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_app/utils/app_default.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab1.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab2.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab3.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab4.dart';
import 'package:menu_app/view/widgets/buttons/popped_button.dart';
import 'package:collection/collection.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController tabBarController;

  @override
  void initState() {
    super.initState();
    tabBarController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDefault.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Row(
          //         children: [
          //           CircleAvatar(
          //             radius: 22,
          //             backgroundColor: const Color(0xFFAEAEC0).withOpacity(0.4),
          //           ),
          //           const SizedBox(width: 8),
          //           Text(
          //             'Sunrise Cafe',
          //             style: TextStyle(
          //               color: AppDefault.textColor,
          //               fontWeight: FontWeight.w700,
          //               fontSize: 16,
          //             ),
          //           ),
          //         ],
          //       ),
          //       // Popped buttons
          //       Row(
          //         children: [
          //           PoppedButton(
          //             height: 30,
          //             width: 30,
          //             onTap: () {
          //               // Define action here
          //             },
          //           ),
          //           const SizedBox(width: 16),
          //           PoppedButton(
          //             height: 30,
          //             width: 30,
          //             onTap: () {
          //               // Define action here
          //             },
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 40),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: const Color(0xFF3CBCB4),
                    tabs: [
                      ...["fdf", "efe", "dwd", "dwd"].mapIndexed((i, e) => Text(
                            e,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: i == tabBarController.index
                                    ? AppDefault.primaryColor
                                    : AppDefault.textColor),
                          )),
                    ],
                    controller: tabBarController,
                  ),
                  // Wrap TabBarView with Expanded to give it a bounded height
                  Expanded(
                    child: TabBarView(
                      controller: tabBarController,
                      children: [
                        const SpecialTab(),
                        const HomeTab2(),
                        const HomeTab3(),
                        const HomeTab4(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //         child: Container(
          //           height: 130,
          //           decoration: BoxDecoration(
          //             color: AppDefault.backgroundColor.withOpacity(0.4),
          //             borderRadius: BorderRadius.circular(10.0),
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Container(
          //               decoration: const BoxDecoration(
          //                 gradient: RadialGradient(
          //                   center: Alignment.bottomLeft,
          //                   radius: 1.0,
          //                   colors: [
          //                     Color(0xFF000000),
          //                     Color.fromRGBO(0, 0, 0, 0.32),
          //                   ],
          //                   stops: [0.2503, 0.5312],
          //                 ),
          //                 borderRadius: BorderRadius.all(
          //                   Radius.circular(10.0),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
