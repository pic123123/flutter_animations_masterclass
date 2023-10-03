import 'package:flutter/material.dart';
import 'dart:math' as math;

class ExplicitAnimations extends StatefulWidget {
  const ExplicitAnimations({Key? key}) : super(key: key);

  @override
  _ExplicitAnimationsState createState() => _ExplicitAnimationsState();
}

class _ExplicitAnimationsState extends State<ExplicitAnimations>
    with TickerProviderStateMixin {
  late AnimationController _whiteController;
  late AnimationController _blackController;

  @override
  void initState() {
    super.initState();

    // Initialize the white controller and animation.
    _whiteController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Future.delayed(
                  const Duration(seconds: 2), () => startBlackAnimation());
            }
          });

    // Initialize the black controller and animation.
    _blackController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Future.delayed(
                  const Duration(seconds: 2), () => startWhiteAnimation());
            }
          });

    startWhiteAnimation();
  }

  void startWhiteAnimation() {
    setState(() {
      _whiteController.reset();
    });
    // Start white animation.
    _whiteController.forward(from: 0.0);
  }

  void startBlackAnimation() {
    setState(() {
      _blackController.reset();
    });
    // Start black animation.
    _blackController.forward(from: 0.0);
  }

  @override
  void dispose() {
    super.dispose();
    _whiteController.dispose();
    _blackController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explicit Animations Example'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemCount: 64,
        itemBuilder: (context, index) {
          bool isWhiteSquare = (index ~/ 8 + index) % 2 == 0; // 체스 판 색상 패턴 계산

          return AnimatedBuilder(
            animation: isWhiteSquare ? _whiteController : _blackController,
            builder: (context, child) {
              double angle = isWhiteSquare
                  ? _whiteController.value * math.pi / 2
                  : (_blackController.value * math.pi / 2);

              return Transform.rotate(
                angle: angle,
                child: Container(
                  color: isWhiteSquare ? Colors.white : Colors.black,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
