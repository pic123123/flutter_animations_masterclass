import 'package:flutter/material.dart';

//Implicit 직접적으로 표현되지 않고, 반대말은 Explicit 공공연히 보여짐
//Implicit widget을 사용하면 애니메이션을 만들필요 없다.Trigger될때 나타남
//widget 이름이 Animated로 시작하면 Implicit widget이다
class ImplicitAnimationsScreen extends StatefulWidget {
  const ImplicitAnimationsScreen({super.key});

  @override
  State<ImplicitAnimationsScreen> createState() =>
      _ImplicitAnimationsScreenState();
}

class _ImplicitAnimationsScreenState extends State<ImplicitAnimationsScreen> {
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
        title: const Text('Implict Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedAlign(
              ///지속 시간
              duration: const Duration(seconds: 2),
              alignment: _visible ? Alignment.topLeft : Alignment.topRight,

              ///AnimatedOpacity 투명도
              child: AnimatedOpacity(
                opacity: _visible ? 1 : 0.2,
                duration: const Duration(seconds: 2),
                child: Container(
                  width: size.width * 0.8,
                  height: size.width * 0.8,
                  color: Colors.amber,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
