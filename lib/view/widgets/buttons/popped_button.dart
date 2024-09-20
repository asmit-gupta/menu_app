import 'package:flutter/material.dart';
import 'package:menu_app/utils/app_default.dart';

class PoppedButton extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onTap;
  final String imagePath;
  const PoppedButton(
      {super.key,
      required this.height,
      required this.width,
      required this.onTap,
      required this.imagePath});

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
          boxShadow: [
            BoxShadow(
              color: const Color(0xffAEAEC0).withOpacity(0.4),
              offset: const Offset(1.5, 1.5),
              blurRadius: 3,
            ),
            const BoxShadow(
              color: Color(0xffFFFFFF),
              offset: Offset(-1, -1),
              blurRadius: 3,
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            imagePath,
            height: 15,
            width: 15,
          ),
        ),
      ),
    );
  }
}
