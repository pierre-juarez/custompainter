import 'package:flutter/material.dart';

class Advanced2Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.red
          ..strokeWidth = 5
          ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * 0.4); // Initial point
    path.lineTo(size.height * 0.4, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
