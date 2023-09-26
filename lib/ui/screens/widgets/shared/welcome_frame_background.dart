import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

class FrameWelcomeScreen extends CustomPainter {
  final double rotationAngle;
  final Offset position;
  final double? height;

  FrameWelcomeScreen({
    required this.rotationAngle,
    required this.position,
    this.height,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();

    path_0
      ..moveTo(155.398, 30.0196)
      ..cubicTo(146.266, 42.8768, 138.065, 67.84, 178.324, 64.8348)
      ..cubicTo(228.647, 61.0784, 241.436, 50.287, 265.436, 29.0479)
      ..cubicTo(289.436, 7.80883, 308.849, -0.208767, 317.936, 4.52417)
      ..cubicTo(324.242, 7.80883, 328.935, 16.172, 321.436, 21.5944)
      ..cubicTo(307.936, 31.3569, 324.365, 39.6715, 344.574, 39.9905)
      ..cubicTo(364.784, 40.3096, 415.681, 30.4944, 438.604, 25.5469)
      ..cubicTo(452.409, 20.8239, 482.682, 10.6642, 493.339, 7.80883)
      ..cubicTo(506.66, 4.23956, 517.905, 9.41795, 516.409, 21.5944)
      ..cubicTo(514.913, 33.7708, 514.54, 37.4545, 530.604, 40.3178)
      ..cubicTo(543.455, 42.6085, 579.909, 35.2983, 596.529, 31.3569)
      ..cubicTo(602.175, 30.0148, 616.006, 27.674, 626.164, 29.0479)
      ..cubicTo(638.862, 30.7654, 644.209, 38.0361, 645.439, 48.97)
      ..cubicTo(646.669, 59.9039, 649.48, 67.8546, 663.574, 69.7098)
      ..cubicTo(674.849, 71.194, 716.429, 72.4426, 735.809, 72.8814)
      ..cubicTo(747.017, 70.7315, 764.967, 72.8506, 747.1, 98.5268)
      ..cubicTo(724.766, 130.622, 748.509, 132.964, 761.713, 134.033)
      ..cubicTo(772.276, 134.889, 777.243, 134.48, 778.406, 134.168)
      ..lineTo(859.826, 416.467)
      ..lineTo(859.826, 416.467)
      ..lineTo(637.603, 856.358)
      ..lineTo(422.436, 959.524)
      ..cubicTo(352.836, 948.69, 297.561, 919.646, 251.565, 882.774)
      ..cubicTo(142.537, 831.661, 45.6829, 767.208, 1.03404, 621.375)
      ..cubicTo(-2.85801, 620.774, 31.3589, 0.885277, 35.2479, 0.264462)
      ..cubicTo(42.8108, -0.942848, 118.499, 19.5982, 155.398, 30.0196);

    canvas.translate(position.dx, position.dy);
    canvas.rotate(rotationAngle * pi / 180);
    canvas.scale(1, height);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = AppColors.purple.withOpacity(1.0);

    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(FrameWelcomeScreen oldDelegate) => false;
}

@override
bool shouldRepaint(CustomPainter oldDelegate) {
  return true;
}
