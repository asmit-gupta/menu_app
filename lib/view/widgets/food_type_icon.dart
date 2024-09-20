import 'package:flutter/material.dart';

class FoodTypeIcon extends StatelessWidget {
  final Color color;
  final double? squareSize;
  final double? circleSize;
  const FoodTypeIcon({
    super.key,
    required this.color,
    this.squareSize,
    this.circleSize,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.crop_square_rounded,
          color: color,
          size: squareSize ?? 30,
        ),
        Icon(
          Icons.circle,
          color: color,
          size: circleSize ?? 10,
        ),
      ],
    );
  }
}
