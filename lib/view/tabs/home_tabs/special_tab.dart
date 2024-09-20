import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:menu_app/data/static_data.dart';
import 'package:menu_app/view/widgets/product_card.dart';

class SpecialTab extends StatefulWidget {
  const SpecialTab({super.key});

  @override
  State<SpecialTab> createState() => _SpecialTabState();
}

class _SpecialTabState extends State<SpecialTab> {
  @override
  Widget build(BuildContext context) {
    var foodList = foodItemList;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              //box-shadow: 5px 5px 13px 0px #D9D9D9E5;
              boxShadow: [
                BoxShadow(
                    offset: Offset(3, 5),
                    blurRadius: 13,
                    color: Color(0xFFD9D9D9).withOpacity(0.9)),
                BoxShadow(
                    offset: Offset(-5, -5),
                    blurRadius: 10,
                    color: Colors.white.withOpacity(0.9)),
                BoxShadow(
                    offset: Offset(5, -5),
                    blurRadius: 10,
                    color: Color(0xFFD9D9D9).withOpacity(0.2)),
                BoxShadow(
                    offset: Offset(-5, 5),
                    blurRadius: 10,
                    color: Color(0xFFD9D9D9).withOpacity(0.2)),
              ]

              // box-shadow: -5px -5px 10px 0px #FFFFFFE5;

              // box-shadow: 5px -5px 10px 0px #D9D9D933;

              // box-shadow: -5px 5px 10px 0px #D9D9D933;

              ),
          child: Container(
            width: double.maxFinite,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: RadialGradient(
                center: Alignment.bottomLeft,
                radius: 9,
                colors: [
                  Color(0xFF000000).withOpacity(0.2532),
                  Color.fromRGBO(0, 0, 0, 0.32).withOpacity(0.53),
                ],
                stops: [0.2503, 0.5312],
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                    child: Container(
                  color: Colors.white.withOpacity(0.3),
                )),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Welcome to \nSunrise Cafe'),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: AlignedGridView.count(
            padding: EdgeInsets.all(10.0),
            itemCount: foodList.length,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            shrinkWrap: true,
            crossAxisCount: 2,
            itemBuilder: (context, index) => ProductCard(
              foodItem: foodList[index],
            ),
          ),
        )
      ],
    );
  }
}
