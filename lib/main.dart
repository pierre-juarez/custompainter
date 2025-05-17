import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Text("Custom Paint", style: Theme.of(context).textTheme.headlineSmall),
            Container(width: 230, height: 230, color: Colors.black12, child: CustomPaint(painter: RamdomPainter())),
            Container(width: 230, height: 230, color: Colors.black12, child: CustomPaint(painter: CatPainter())),
          ],
        ),
      ),
    );
  }
}

class RamdomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.black
          ..strokeWidth = 5
          ..style = PaintingStyle.stroke;

    final path = Path();
    path.lineTo(size.width * 0.5, 0);
    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(0, size.height * 0.5);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.5, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(RamdomPainter oldDelegate) => true;
}

class CatPainter extends CustomPainter {
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
  bool shouldRepaint(CatPainter oldDelegate) => true;
}
