
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:day_33_morning_challenge_curve/main.dart';

void main() {
  CustomCurve myCurve=new CustomCurve();
  test("transform internal test ", () {
    expect(myCurve.transform(0.0), 0.0);
    expect(myCurve.transform(0.1), 0.0);
    expect(myCurve.transform(0.2), 0.0);
    expect(myCurve.transform(0.3), Curves.ease.transform(0.5));
    expect(myCurve.transform(0.35), Curves.ease.transform(0.75));
    expect(myCurve.transform(0.4), 1);
    expect(myCurve.transform(0.45),Curves.decelerate.transform(0.75));
    expect(myCurve.transform(0.5),Curves.decelerate.transform(0.5));
    expect(myCurve.transform(0.55),Curves.decelerate.transform(0.25));
    expect(myCurve.transform(0.6), 0.0);
    expect(myCurve.transform(0.7), 0.0);
    expect(myCurve.transform(1.0), 0.0);
  });
}
//
//  test("transform internal test 2", () {
//    expect(JumpingCurve().transformInternal(0.2), equals(1.0));
//  });
//
//  test("transform internal test 3", () {
//    expect(JumpingCurve().transformInternal(0.4), equals(0.0));
//  });
//
//  test("transform internal test 4", () {
//    expect(JumpingCurve().transformInternal(0.5), equals(0.0));
//  });

