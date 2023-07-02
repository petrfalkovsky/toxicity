import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

class FrameMainScreen extends CustomPainter {
  final double rotationAngle;
  final Offset position;
  final double? height;

  FrameMainScreen({
    required this.rotationAngle,
    required this.position,
    this.height,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();

    path_0.moveTo(-216.78, 306.71);
    path_0.cubicTo(-251.494, 327.318, -255.909, 301.197, -252.804, 285.735);
    path_0.cubicTo(-239.5, 219.499, -352.001, 334.999, -457, 348.999);
    path_0.cubicTo(-1367.44, 470.395, -448.5, 942.498, -2.99943, 838.998);
    path_0.lineTo(867.499, 798.499);
    path_0.lineTo(894, 450.499);
    path_0.cubicTo(966.5, -290, 386.289, 105.115, 376.448, 109.049);
    path_0.cubicTo(364.148, 113.968, 341.844, 122.437, 347.561, 83.756);
    path_0.cubicTo(352.134, 52.8112, 335.117, 58.9016, 326.037, 65.815);
    path_0.cubicTo(308.486, 74.0469, 270.695, 91.433, 259.938, 95.1219);
    path_0.cubicTo(246.49, 99.7331, 240.435, 93.864, 234.468, 84.62);
    path_0.cubicTo(228.5, 75.376, 220.476, 71.2445, 208.341, 75.3574);
    path_0.cubicTo(198.633, 78.6478, 187.288, 86.8992, 182.83, 90.6137);
    path_0.cubicTo(169.7, 101.54, 140.309, 124.31, 127.781, 127.977);
    path_0.cubicTo(112.121, 132.562, 110.815, 129.098, 106.737, 117.528);
    path_0.cubicTo(102.658, 105.958, 90.2822, 106.325, 79.9419, 115.449);
    path_0.cubicTo(71.6695, 122.749, 49.0804, 145.32, 38.8199, 155.693);
    path_0.cubicTo(20.4942, 170.325, -20.7171, 201.766, -38.9568, 210.474);
    path_0.cubicTo(-57.1966, 219.183, -57.7982, 205.995, -55.819, 198.313);
    path_0.cubicTo(-51.5171, 190.12, -43.4866, 173.58, -45.7803, 172.966);
    path_0.cubicTo(-56.0238, 172.771, -62.7585, 182.012, -87.8646, 200.209);
    path_0.cubicTo(-112.971, 218.405, -173.387, 280.951, -216.78, 306.71);
    path_0.close();

    canvas.translate(position.dx, position.dy);
    canvas.rotate(rotationAngle * pi / 180);
    canvas.scale(1, height);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = AppConfig.purpleColor.withOpacity(1.0);

    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(FrameMainScreen oldDelegate) => false;
}

@override
bool shouldRepaint(CustomPainter oldDelegate) {
  return true;
}
