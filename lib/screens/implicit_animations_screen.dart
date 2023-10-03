import 'dart:math';

import 'package:flutter/material.dart';

class ImplicitAnimationsScreen extends StatefulWidget {
  const ImplicitAnimationsScreen({super.key});

  @override
  State<ImplicitAnimationsScreen> createState() =>
      _ImplicitAnimationsScreenState();
}

class _ImplicitAnimationsScreenState extends State<ImplicitAnimationsScreen>
    with SingleTickerProviderStateMixin {
  final random = Random();
  late AnimationController controller;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Implict Animations Ex'),
      ),
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 10,
          children:
              List.generate(100, (index) => _buildAnimatedContainer(index)),
        ),
      ),
    );
  }

  Widget _buildAnimatedContainer(int index) {
    Color color;
    if ((index ~/ 10) % 2 == 0) {
      color = index % 2 == 0 ? Colors.yellow : Colors.red;
    } else {
      color = index % 2 == 0 ? Colors.blue : Colors.white;
    }

    double dx = random.nextDouble() * 20 - 10; // range from -10 to +10
    double dy = random.nextDouble() * 20 - 10; // range from -10 to +10

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final transform = Matrix4.identity()
          ..translate(dx * controller.value, dy * controller.value);

        return Transform(
          transform: transform,
          alignment: Alignment.center,
          child: Container(color: color),
        );
      },
    );
  }
}
