import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:collection/collection.dart';
import 'package:menu_app/utils/app_default.dart';
import 'package:menu_app/view/tabs/home_tabs/special_tab.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab2.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab3.dart';
import 'package:menu_app/view/tabs/home_tabs/home_tab4.dart';
import 'package:menu_app/view/widgets/buttons/popped_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabBarController;

  @override
  void initState() {
    super.initState();
    tabBarController = TabController(length: 4, vsync: this);
     tabBarController.addListener((){
      setState(() {
              
            });
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDefault.backgroundColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            //box-shadow: 1.5px 1.5px 3px 0px #AEAEC066;

//box-shadow: -1px -1px 3px 0px #FFFFFF;

            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: const Offset(1.5, 1.5),
                      blurRadius: 3,
                      color: const Color(0xFFAEAEC0).withOpacity(0.4)),
                  const BoxShadow(
                      offset: Offset(-1, -1),
                      blurRadius: 3,
                      color: Colors.white)
                ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 19, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Sunrise Cafe',
                                style: TextStyle(
                                    color: Color(0xFF4A5662),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              PoppedButton(
                                height: 30,
                                width: 30,
                                onTap: () {},
                                imagePath: 'assets/appbar_button1.png',
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              PoppedButton(
                                height: 30,
                                width: 30,
                                onTap: () {},
                                imagePath: 'assets/appbar_button2.png',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    TabBar(
                      tabAlignment: TabAlignment.center,
                      
                      isScrollable: true,
                      indicatorColor: const Color(0xFF3CBCB4),
                    
                      tabs: [
                        ...["Special", "Main", "Desserts", "Beverages"]
                            .mapIndexed((i, e) => Text(
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
                  ],
                )),
            
            // Wrap TabBarView with Expanded to give it a bounded height
            Expanded(
              child: TabBarView(
                controller: tabBarController,
                children: const [
                  SpecialTab(),
                  HomeTab2(),
                  HomeTab3(),
                  HomeTab4(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
