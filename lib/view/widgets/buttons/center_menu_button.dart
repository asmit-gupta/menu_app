import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterMenuButton extends StatelessWidget {
  const CenterMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 48,
      decoration: const BoxDecoration(
        color: Color(0xFF4A5662),
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 13,
        ),
        child: Text(
          'Menuu',
          style: GoogleFonts.ubuntu(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
