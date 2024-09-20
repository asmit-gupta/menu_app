import 'package:flutter/material.dart';

class HomeTab4 extends StatefulWidget {
  const HomeTab4({super.key});

  @override
  State<HomeTab4> createState() => _HomeTab4State();
}

class _HomeTab4State extends State<HomeTab4> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Beverages',
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
    );
  }
}
