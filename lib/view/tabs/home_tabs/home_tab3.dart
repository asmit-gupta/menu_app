import 'package:flutter/material.dart';

class HomeTab3 extends StatefulWidget {
  const HomeTab3({super.key});

  @override
  State<HomeTab3> createState() => _HomeTab3State();
}

class _HomeTab3State extends State<HomeTab3> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Desserts',
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
    );
  }
}
