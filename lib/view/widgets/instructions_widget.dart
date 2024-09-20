import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionsWidget extends StatelessWidget {
  const InstructionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Add cooking instruction',
      style: GoogleFonts.ubuntu(
        color: Color(0xFF76DFE5),
        fontWeight: FontWeight.w500,
        fontSize: 12,
        decoration: TextDecoration.underline,
        decorationColor: Color(0xFF76DFE5),
      ),
    );
  }
}
