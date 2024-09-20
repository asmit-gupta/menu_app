import 'package:flutter/material.dart';
import 'package:menu_app/view/widgets/buttons/plus_circular_button.dart';

class AddButton extends StatefulWidget {
  const AddButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 72,
        height: 32,
        decoration: BoxDecoration(
          color: const Color(0xFFF0F0F3),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, 5),
              blurRadius: 13,
              color: const Color(0xffDDDDE0).withOpacity(0.9),
            ),
            BoxShadow(
              offset: const Offset(-5, -5),
              blurRadius: 10,
              color: const Color(0xffFFFFFF).withOpacity(0.9),
            ),
            BoxShadow(
              offset: const Offset(5, -5),
              blurRadius: 10,
              color: const Color(0xffDDDDE0).withOpacity(0.2),
            ),
            BoxShadow(
              offset: const Offset(-5, 5),
              blurRadius: 10,
              color: const Color(0xffDDDDE0).withOpacity(0.2),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.only(
            left: 4.0,
            top: 4.0,
            bottom: 4.0,
            right: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircularContainer(
                icon: Icons.add,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'ADD',
                style: TextStyle(
                  color: Color(0xFF4A5662),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
