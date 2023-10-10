import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {
  final String question;
  final String answer;
  final bool isFlipped;
  final int index;

  const FlashCard({
    Key? key,
    required this.question,
    required this.answer,
    this.isFlipped = false,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.5,
      child: isFlipped
          ? Center(child: Text(answer))
          : Image.asset("assets/covers/$index.jpg", fit: BoxFit.cover),
    );
  }
}
