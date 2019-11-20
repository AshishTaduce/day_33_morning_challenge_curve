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

class CustomCurve extends Curve {
  @override
  double transform(double t) {
    if(t > 0.20 && t <= 0.4){
      t = (t * 5) - 1;
      return Curves.ease.transform(t);
    }
    else if(t >= 0.400 && t <= 0.600){

      t = (t * 5) - 2;
      return Curves.decelerate.transform(1 - t);
    }
    else {
      return 0;
    }
  }
}
