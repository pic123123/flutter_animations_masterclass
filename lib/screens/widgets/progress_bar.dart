import 'package:flutter/material.dart';

class ProgressBarPainter extends CustomPainter {
  double progress;

  ProgressBarPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..strokeWidth = size.height
      ..style = PaintingStyle.stroke;

    canvas.drawLine(Offset(0, size.height / 2),
        Offset(size.width * progress, size.height / 2), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
