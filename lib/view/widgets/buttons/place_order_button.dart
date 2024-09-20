import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:menu_app/view/widgets/place_order_icon.dart';

class PlaceOrderButton extends StatefulWidget {
  const PlaceOrderButton({super.key});

  @override
  State<PlaceOrderButton> createState() => _PlaceOrderButtonState();
}

class _PlaceOrderButtonState extends State<PlaceOrderButton> {
  var grad = const LinearGradient(
    colors: [Color(0xFF459EAF), Color(0xFF007991)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          gradient: grad,
          boxShadow: const [
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 13,
              color: Color(0xE5CDCDCD),
            ),
            BoxShadow(
              offset: Offset(-5, -5),
              blurRadius: 10,
              color: Color(0xE5FFFFFF),
            ),
            BoxShadow(
              offset: Offset(5, -5),
              blurRadius: 10,
              color: Color(0x33CDCDCD),
            ),
            BoxShadow(
              offset: Offset(-5, 5),
              blurRadius: 10,
              color: Color(0x33CDCDCD),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.only(
            right: 8.0,
            top: 8.0,
            bottom: 8.0,
            left: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '4 Items',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Text(
                    'PLACE ORDER',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  PlaceOrderIcon(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
