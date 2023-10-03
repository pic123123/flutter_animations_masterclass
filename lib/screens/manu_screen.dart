import 'package:flutter/material.dart';
import 'package:flutter_animations_masterclass/screens/explicit_animations_screen.dart';

import 'implicit_animations_screen.dart';
import 'implicit_animations_screen_ex.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  void _goToPage(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animations"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _goToPage(
                  context,
                  const ImplicitAnimationsExScreen(),
                );
              },
              child: const Text('Implicit Animations ex'),
            ),
            ElevatedButton(
              onPressed: () {
                _goToPage(
                  context,
                  const ImplicitAnimationsScreen(),
                );
              },
              child: const Text('Implicit Animations'),
            ),
            ElevatedButton(
              onPressed: () {
                _goToPage(
                  context,
                  const ExplicitAnimations(),
                );
              },
              child: const Text('Explicit Animations'),
            ),
          ],
        ),
      ),
    );
  }
}
