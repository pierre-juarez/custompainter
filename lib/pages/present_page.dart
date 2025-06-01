import 'package:flutter/material.dart';

class PresentPage extends StatelessWidget {
  const PresentPage({super.key, required this.title, required this.childPainter, required this.isFullScreen});

  final String title;
  final CustomPainter childPainter;
  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.black12,
          width: isFullScreen ? double.infinity : 300,
          height: isFullScreen ? double.infinity : 200,
          child: CustomPaint(painter: childPainter),
        ),
      ),
    );
  }
}
