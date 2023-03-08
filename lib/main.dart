import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LottieAnimationWithGIF(),
      //home: LottieAnimationWithJson(),
    );
  }
}

class LottieAnimationWithGIF extends StatelessWidget {
  const LottieAnimationWithGIF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image.asset('assets/bicycle_animation.gif'),
      ),
    );
  }
}

class LottieAnimationWithJson extends StatelessWidget {
  const LottieAnimationWithJson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset('assets/bicycle_anim.json')),
    );
  }
}
