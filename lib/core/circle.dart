import 'package:flutter/material.dart';
import 'dart:math' as math;

enum CutDirection { leftCut, rightCut }

class HalfCircleCut extends StatelessWidget {
  final double radius;
  final CutDirection direction;
  final Color color;

  const HalfCircleCut({
    super.key,
    required this.radius,
    required this.direction,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(radius, radius * 2),
      painter: _HalfCircleCutPainter(
        radius: radius,
        direction: direction,
        color: color,
      ),
    );
  }
}

class _HalfCircleCutPainter extends CustomPainter {
  final double radius;
  final CutDirection direction;
  final Color color;

  _HalfCircleCutPainter({
    required this.radius,
    required this.direction,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();

    if (direction == CutDirection.leftCut) {
      // LEFT SIDE ROUND - semicircle with curved part on the left
      // Start at top right
      path.moveTo(radius, 0);
      
      // Line to top left (start of curve)
      path.lineTo(0, 0);
      
      // Draw arc from top to bottom on the left side
      path.arcTo(
        Rect.fromLTWH(0, 0, radius * 2, radius * 2),
        -math.pi / 2,  // Start at top
        math.pi,       // Sweep 180° to bottom (going left)
        false,
      );
      
      // Line from bottom left to bottom right
      path.lineTo(radius, radius * 2);
      
      path.close();
    } else {
      // RIGHT SIDE ROUND - semicircle with curved part on the right
      // Start at top left
      path.moveTo(0, 0);
      
      // Line to top right (start of curve)
      path.lineTo(radius, 0);
      
      // Draw arc from top to bottom on the right side
      path.arcTo(
        Rect.fromLTWH(-radius, 0, radius * 2, radius * 2),
        -math.pi / 2,  // Start at top
        -math.pi,      // Sweep 180° to bottom (going right)
        false,
      );
      
      // Line from bottom right to bottom left
      path.lineTo(0, radius * 2);
      
      path.close();
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}