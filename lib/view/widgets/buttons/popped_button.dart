import 'package:flutter/material.dart';
import 'package:menu_app/utils/app_default.dart';

class PoppedButton extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onTap;
  const PoppedButton(
      {super.key,
      required this.height,
      required this.width,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppDefault.backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0xAEAEC066),
              offset: Offset(1.5, 1.5),
              blurRadius: 3,
            ),
            BoxShadow(
              color: Color(0xFFFFFFFF),
              offset: Offset(-1, -1),
              blurRadius: 3,
            ),
          ],
        ),
      ),
    );
  }
}
