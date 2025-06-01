import 'package:flutter/material.dart';

class BasicPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.purple
          ..strokeWidth = 5
          ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(size.width, 0); // Initial point

    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(0, size.height * 0.4);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
