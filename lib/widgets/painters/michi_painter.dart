import 'package:flutter/material.dart';

class MichiPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.red
          ..strokeWidth = 5
          ..style = PaintingStyle.stroke;

    final path = Path();

    path.moveTo(size.width * 0.3333, 0);
    path.lineTo(size.width * 0.3333, size.height);

    path.moveTo(size.width * 0.6666, 0);
    path.lineTo(size.width * 0.6666, size.height);

    path.moveTo(0, size.height * 0.3333);
    path.lineTo(size.width, size.height * 0.3333);

    path.moveTo(0, size.height * 0.6666);
    path.lineTo(size.width, size.height * 0.6666);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MichiPainter oldDelegate) => true;
}
