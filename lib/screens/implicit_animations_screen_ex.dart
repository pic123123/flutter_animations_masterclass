//Implicit 직접적으로 표현되지 않고, 반대말은 Explicit 공공연히 보여짐
//Implicit widget을 사용하면 애니메이션을 만들필요 없다.Trigger될때 나타남
//widget 이름이 Animated로 시작하면 Implicit widget이다

import 'package:flutter/material.dart';

class ImplicitAnimationsExScreen extends StatefulWidget {
  const ImplicitAnimationsExScreen({super.key});

  @override
  State<ImplicitAnimationsExScreen> createState() =>
      _ImplicitAnimationsExScreenState();
}

class _ImplicitAnimationsExScreenState
    extends State<ImplicitAnimationsExScreen> {
  bool _visible = true;

  void _trigger() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implict Animations Ex'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              ///https://api.flutter.dev/flutter/animation/Curves-class.html
              curve: Curves.bounceInOut,
              tween: ColorTween(
                begin: Colors.yellow,
                end: Colors.red,
              ),
              builder: (context, value, child) {
                return Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/4/4f/Dash%2C_the_mascot_of_the_Dart_programming_language.png",
                  color: value,
                  colorBlendMode: BlendMode.colorBurn,
                );
              },
              duration: const Duration(seconds: 5),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: _trigger,
              child: const Text('Go!'),
            )
          ],
        ),
      ),
    );
  }
}
