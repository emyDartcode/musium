import 'package:flutter/material.dart';

class SlantedRectangle extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final Color color;
  final double angle; // Rotation angle in radians

  const SlantedRectangle({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    this.color = Colors.blue,
    this.angle = 0.35, // Default ~20 degrees, adjust as needed
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle, // Positive value rotates clockwise
      child: Container(
        width: width,
        height: height,
        color: color,
        child: child,
      ),
    );
  }
}