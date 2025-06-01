import 'package:custompaint/widgets/outlined_custom_button.dart';
import 'package:custompaint/widgets/painters/painters.dart';
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
      appBar: AppBar(title: const Text("Customs Painter"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            OutlinedCustomButton(title: "Random Painter", childPainter: RandomPainter(), isFullScreen: false),
            OutlinedCustomButton(title: "Michi Painter", childPainter: MichiPainter(), isFullScreen: false),
            OutlinedCustomButton(title: "Basic Painter", childPainter: BasicPainter()),
            OutlinedCustomButton(title: "Advanced 1", childPainter: Advanced1Painter()),
            OutlinedCustomButton(title: "Advanced 2", childPainter: Advanced2Painter()),
            OutlinedCustomButton(title: "Advanced 3", childPainter: Advanced3Painter()),
          ],
        ),
      ),
    );
  }
}
