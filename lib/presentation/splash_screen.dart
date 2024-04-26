import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/hintergründe/bg_startscreen.png',
                ),
              ),
            ),
          ),

          // Overlay image
          Positioned(
            top: 80,
            left: 300,
            child: Image.asset('assets/images/grafiken/chick cupcakes_3D.png'),
          ),
          Positioned(
            top: 400,
            left: 200,
            child: Image.asset('assets/images/details/T2.png'),
          ),
        ],
      ),
    );
  }
}
