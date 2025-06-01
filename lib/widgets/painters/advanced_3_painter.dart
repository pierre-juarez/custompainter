import 'package:flutter/material.dart';

class Advanced3Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.blue.shade300
          ..strokeWidth = 5
          ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * 0.4); // Initial point

    // Curve
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.6, // Punto de control
      size.width * 0.5,
      size.height * 0.4, // Punto final
    );

    // Curve
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.2, // Punto de control
      size.width,
      size.height * 0.4, // Punto final
    );
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
