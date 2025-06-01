import 'package:flutter/material.dart';

class Advanced1Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.orange[300]!
          ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(size.width, 0); // Initial point
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height * 0.35);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(Advanced1Painter oldDelegate) => true;
}
