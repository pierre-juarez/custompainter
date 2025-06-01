import 'package:custompaint/pages/present_page.dart';
import 'package:flutter/material.dart';

class OutlinedCustomButton extends StatelessWidget {
  const OutlinedCustomButton({super.key, required this.title, required this.childPainter, this.isFullScreen = true});

  final String title;
  final CustomPainter childPainter;
  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PresentPage(title: title, childPainter: childPainter, isFullScreen: isFullScreen),
          ),
        );
      },
      child: Text(title),
    );
  }
}
