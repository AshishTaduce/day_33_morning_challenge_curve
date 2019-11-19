print("Hello Ashish");
import 'package:flutter/material.dart';

void main() => runApp(AnimatedDots());

class AnimatedDots extends StatefulWidget {
  @override
  _AnimatedDotsState createState() => _AnimatedDotsState();
}

class _AnimatedDotsState extends State<AnimatedDots> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class JumpingCurve extends Curve {
  @override
  double transformInternal(double t) {
    return 0;
  }
}
